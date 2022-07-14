#include "ls01b_driver.h"



static  int g_run;
static  int g_fd;
static  pthread_t g_pThread;
static  pthread_mutex_t g_tMutex = PTHREAD_MUTEX_INITIALIZER;
static  pthread_cond_t g_tConVar  = PTHREAD_COND_INITIALIZER;


static unsigned short g_angle_or_strenght[1440];
static unsigned short g_distance[1440];
static unsigned int     g_curr_point = 0;

static unsigned short g_angle_or_strenght_back[1440];
static unsigned short g_distance_back[1440];
static unsigned int     g_curr_point_back = 0;

static unsigned short g_count = 0;
static unsigned short g_speed;
static unsigned short g_angle_or_strenght_flag;
/***************************************************************/
//                                         解析雷达数据

static void ls01b_driver_data_parse(unsigned char *buf, unsigned int len, ls01b_lidar_driver *ls01b_lidar)
{
	unsigned int i;
	double lidar_angle;
	
#if 1
       if (ls01b_lidar->flag){ //强度
              for (i = 0; i < len; i += 3, g_curr_point++){
			g_angle_or_strenght[g_curr_point] = buf[i];
			g_distance[g_curr_point] = buf[i+1] << 8 | buf[i+2];
			//ALOGI("lidar_strenght = %d lidar_distance = %d \n", lidar_strenght[k], lidar_distance[k]);
	       }
	}else{   //角度
               for (i = 0; i < len; i += 3, g_curr_point++){
               	lidar_angle = buf[i]*ls01b_lidar->angular_resolution/100.0+ls01b_lidar->start_angle;
			lidar_angle *= 100;
			g_angle_or_strenght[g_curr_point] = (unsigned short)lidar_angle;
	        	g_distance[g_curr_point] = buf[i+1] << 8 | buf[i+2];
			//ALOGI("lidar_angle = %d lidar_distance = %d ---%d--\n", g_angle_or_strenght[g_curr_point], g_distance[g_curr_point], g_curr_point);
               }
	}

	g_count++;
	
#endif

       if (g_count >= 24){
		pthread_mutex_lock(&g_tMutex);
		pthread_cond_signal(&g_tConVar);
		
		g_curr_point_back             = g_curr_point;
		g_curr_point                       = 0;
		memcpy(g_angle_or_strenght_back, g_angle_or_strenght, g_curr_point_back*sizeof(unsigned short));
		memcpy(g_distance_back, g_distance, g_curr_point_back*sizeof(unsigned short));
		g_angle_or_strenght_flag = ls01b_lidar->flag;
		g_speed                              = ls01b_lidar->speed;
	
		pthread_mutex_unlock(&g_tMutex);
	}

}

static unsigned short ushort_abs(unsigned short str, unsigned short des)
{
	if (str >= des){
		return (str-des);
	}

	return (des-str);
}


/********************************************************************/
//                                                  解析包头1

static void  ls01b_driver_head_handle(unsigned char *buf, unsigned int len, ls01b_lidar_driver *ls01b_lidar)
{ 
	unsigned short tmp_data_len = 0;
	unsigned int i;
	unsigned short data_len[3][2] = {25, 180, 
		                                            50, 90, 
		                                            100, 45};

	ls01b_lidar->flag      = (buf[0] >> 7) & 0x01;
       ls01b_lidar->speed  = ((buf[0] & 0xef) << 8) | buf[1];
	   
	ls01b_lidar->angular_resolution  =  (buf[2] >> 1) & 0xff;       //angular_resolution[15-9]+start_angle[8]
	ls01b_lidar->start_angle            = ((buf[2] & 0x01) << 8) | buf[3];  //start_angle[7-0]

	if ( ls01b_lidar->angular_resolution > 0){
	       ls01b_lidar->data_len = 15*100*3/ls01b_lidar->angular_resolution;
	}

      //给三次机会
	for (i = 0; i < 3; i++){
		if (ls01b_lidar->angular_resolution == data_len[i][0]){
			tmp_data_len = data_len[i][1];
			break;
		}
	}
	
	if (i >= 3){
		for (i = 0; i < 3; i++){
			if (ls01b_lidar->data_len == data_len[i][1]){
				tmp_data_len = data_len[i][1];
				break;
			}
		}
	}

	if (i >= 3){
		for (i = 0; i < 3; i++){
			if (ushort_abs(data_len[i][0], ls01b_lidar->angular_resolution) < 10){
				tmp_data_len = data_len[i][1];
				break;
			}
		}
	}

	ls01b_lidar->data_len = tmp_data_len;
	
	//ALOGI("ls01b_driver_head1_handle ===%d===\n", ls01b_lidar->data_len);

	//ls01b_lidar->data_count  += 2;

	//ALOGI("flag = %d , speed = %d, angular_resolution= %d, start_angle = %d, data_len= %d  data_count =%d\n",
	 //             ls01b_lidar->flag, ls01b_lidar->speed ,  ls01b_lidar->angular_resolution, ls01b_lidar->start_angle, 
	 //             ls01b_lidar->data_len, ls01b_lidar->data_count);

}

/******************************************************************/
//                                                 接收雷达数据

static void *ls01b_driver_handle(void *dat)
{
	unsigned char buf[5120];
	ls01b_lidar_driver ls01b_lidar;
	
	fd_set read_fds;
	struct timeval tm;

	unsigned int start = 0;
	unsigned int total;
	unsigned int ret;
	unsigned int i;
	

	g_run = 1;
	i = 0;
	total = 1;
	ls01b_lidar.data_count  = 0;
	   
	while(g_run){

		FD_ZERO(&read_fds);
		FD_SET(g_fd, &read_fds);

		tm.tv_sec = 0;
		tm.tv_usec = 1000; //30ms
		
		ret = select(g_fd + 1, &read_fds, NULL, NULL, &tm);	
		if (ret == 0){
                    //雷达没数据
		}else if (ret < 0){
                      //串口不存在
		}else{
                    if (FD_ISSET(g_fd, &read_fds)){
	
                           ret = read(g_fd, buf+i, total-i);
		             //ALOGI("READ:%d   %d  %d\n", ret, total, i);
					 
			      if (ret > 0){
					if (ls01b_lidar.data_count  == 0){
					    //ALOGI("read0:+++%x ++++\n", buf[0]);
                                        if (buf[0] == 0xA5){
                                             ls01b_lidar.data_count= 1;
						   total = 1;
					    }else{
 						   ls01b_lidar.data_count = 0;
 						    total = 1;
					    }
					    i = 0;
				      }else if (ls01b_lidar.data_count == 1){
				              //ALOGI("read1:+++%x ++++\n", buf[0]);
						if (buf[0] == 0x6A){
							 start = 1;
							 g_count = 0;
							 g_curr_point = 0;
							 ls01b_lidar.data_count = 2;   // 2
							 total = 4;      // 2
						}else if (buf[0] == 0x5A){
							 ls01b_lidar.data_count = 2;   // 2
							 total = 4;       // 2
							 //ALOGI("read12:+++%d +++%d+\n", ls01b_lidar.data_count, total);
						}else{
                                                ls01b_lidar.data_count = 0;
 						      total = 1;
						}
							 
						i = 0;
					}
					else if (ls01b_lidar.data_count == 2){
						i += ret;
						if (i >= 4){
					           ls01b_driver_head_handle(buf, 4, &ls01b_lidar);
						    
						    total = ls01b_lidar.data_len;

						    if (total > 0){
							      ls01b_lidar.data_count = 6;
						     }else{
							      ls01b_lidar.data_count = 0;
							      total = 1;
						     }
						   
						    i = 0;
						}
                               
					}
					else{
                                          //满包数据处理	
                                          i += ret;
						if (i >= total){
							if (!start){
								//ALOGI("total:---%d--%d -%d-\n", total, i, ret);  //4458	
								//ls01b_driver_data_parse(buf, ls01b_lidar.data_len, &ls01b_lidar);
								total = 1;
								ls01b_lidar.data_count = 0;
								i = 0;
								start = 0;
							}else{
							       //ALOGI("OK ---->total:---%d--%d -%d-\n", total, i, ret);  //4458	
								ls01b_driver_data_parse(buf, ls01b_lidar.data_len, &ls01b_lidar);
								total = 1;
								ls01b_lidar.data_count= 0;
								i = 0;
								if (g_count >= 24){
									g_curr_point = 0;
									g_count = 0;
									start = 0;
								}
							}
						}

					}
					 /***********************/
				}
                    }
              }

	}


	return NULL;
}

/******************************************************************/
//                                      串口初始化

int lidar_driver::OpenLidarSerial(const char* port, unsigned int baudrate)
{
	struct termios m_stNew;
	struct termios m_stOld;

	const char* addr = port;
	const char* addr2 = port;

	g_fd = open(addr, O_RDWR | O_NOCTTY | O_NDELAY);
	if (-1 == g_fd)
	{
		usleep(30000);
		g_fd = open(addr2, O_RDWR | O_NOCTTY | O_NDELAY);
		if (g_fd < 0)
			return -1;
	}
	
	ALOGI("start init serial\n");
	
	if ((fcntl(g_fd, F_SETFL, 0)) < 0)
	{
		ALOGI("Fcntl F_SETFL Error!\n");
		return -1;
	}
	if (tcgetattr(g_fd, &m_stOld) != 0)
	{
		ALOGI("tcgetattr error!\n");
		return -1;
	}

	m_stNew = m_stOld;
	cfmakeraw(&m_stNew);		    

	//set speed
	cfsetispeed(&m_stNew, baudrate);		 
	cfsetospeed(&m_stNew, baudrate);

	//set databits
	m_stNew.c_cflag |= (CLOCAL | CREAD);
	m_stNew.c_cflag &= ~CSIZE;
	m_stNew.c_cflag |= CS8;

	//set parity
	m_stNew.c_cflag &= ~PARENB;
	m_stNew.c_iflag &= ~INPCK;

	//set stopbits
	m_stNew.c_cflag &= ~CSTOPB;
	m_stNew.c_cc[VTIME] = 0;	
	//m_stNew.c_cc[VMIN] = 1;	
	m_stNew.c_cc[VMIN] = 0;	
	
	tcflush(g_fd, TCIFLUSH);	
	if (tcsetattr(g_fd, TCSANOW, &m_stNew) != 0)
	{
		ALOGI("tcsetattr Error!\n");
		return -1;
	}
	
	
	g_run = 1;

	pthread_create(&g_pThread, NULL, ls01b_driver_handle, NULL);

	ALOGI(" init seria  finish  !\n");
	
	return g_fd;
}

/*************************************************************/
//                                          关闭串口，退出线程

void lidar_driver::CloseLidarSerial(void)
{	
	g_run  = 0;

       if (g_pThread > 0)
	     pthread_join(g_pThread, NULL);
		
	close(g_fd);
	
}


/************************************************************/
//                                   发送命令  控制雷达

int lidar_driver::SendLidarCommand(int cmd, unsigned short data)
{
	unsigned char buffer[4] = {0xA5, 0x20, 0, 0};
       int ret;

	usleep(2000);
	switch(cmd){
    
       case START:
	   	buffer[1] = 0x2C;
		ret = write(g_fd, buffer, 2);
		break;
	case STOP:
		buffer[1] = 0x25;
		ret = write(g_fd, buffer, 2);
		break;
	case SCAN:
		buffer[1] = 0x22;
		ret = write(g_fd, buffer, 2);
		break;
	case DATA_SCAN:
		buffer[1] = 0x20;
		ret = write(g_fd, buffer, 2);
		break;
	case DATA_STOP:
		buffer[1] = 0x21;
		ret = write(g_fd, buffer, 2);
		break;
	case SWITCH_ANGLE:
		buffer[1] = 0x50;
		ret = write(g_fd, buffer, 2);
		break;
	case SWITCH_STRENGHT:
		buffer[1] = 0x5C;
		ret = write(g_fd, buffer, 2);
		break;
	case CHSPEED:
		buffer[1] = 0x26;
		buffer[2]  = (data >> 8) & 0xff;
		buffer[3]  = data & 0xff;
		ret = write(g_fd, buffer, 4);
		break;
	case CHRESOLUTION:
		buffer[1] = 0x30;
		buffer[2]  = (data >> 8) & 0xff;
		buffer[3]  = data & 0xff;
		ret = write(g_fd, buffer, 4);
		break;
	default:
		ret = -1;
		break;
			 	 
	}

	return ret;
}

/*************************************************************************/
//                                              获取雷达一圈数据
#if 1
int lidar_driver::GetLidarScanData(unsigned short *angle_or_strenght, unsigned short *distance, unsigned short len, unsigned short *speed, unsigned short *angle_or_strenght_flag)
{
	unsigned short min;
	
	pthread_mutex_lock(&g_tMutex);
	pthread_cond_wait(&g_tConVar, &g_tMutex);

	min = len > g_curr_point_back ? g_curr_point_back : len;
	//ALOGI("+++++++++++++++++++++++++++++++++++\n");
	memcpy(angle_or_strenght, g_angle_or_strenght_back, min*sizeof(unsigned short));
	memcpy(distance, g_distance_back, min*sizeof(unsigned short));

	*speed                      = g_speed;
	*angle_or_strenght_flag = g_angle_or_strenght_flag;
	
	g_curr_point_back   = 0;
	
	pthread_mutex_unlock(&g_tMutex);

	return min;
}
#endif
