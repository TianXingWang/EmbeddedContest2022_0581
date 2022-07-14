#ifndef _LS01B_DRIVER_H_
#define _LS01B_DRIVER_H_

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <termios.h>
#include <fcntl.h>

#include <semaphore.h>
#include <pthread.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#include <malloc.h>
#include <termios.h>
#include <stdbool.h>
#include <sys/time.h>

#define DEBUG  1

#if DEBUG
#define ALOGI(x...)     printf( x)
#else
#define ALOGI(x...)    
#endif

struct ls01b_package {
	int start;
	int flag;
	int curr_point;
	unsigned char data[2048];
};

struct ls01b_data
{
	unsigned short count;
	unsigned short start;
	unsigned short curr_point;
	unsigned short angle_or_strenght[1440];
	unsigned short distance[1440];
};


struct ls01b_lidar_driver {
      unsigned char flag;
      unsigned short speed;
      unsigned char angular_resolution;
      unsigned short start_angle;
      unsigned int data_count;
      unsigned int data_len;
};

enum ls01b_driver_command_protocol { 
       START  = 0,
	STOP ,
	SCAN ,
	DATA_SCAN ,
	DATA_STOP ,
	SWITCH_ANGLE,
	SWITCH_STRENGHT,
	CHSPEED,
	CHRESOLUTION,
};

class lidar_driver
{

public:

	int OpenLidarSerial(const char* port, unsigned int baudrate);
	
	int SendLidarCommand(int cmd, unsigned short data);
	
	int GetLidarScanData(unsigned short *angle_or_strenght, unsigned short *distance, unsigned short len, unsigned short *speed, unsigned short *angle_or_strenght_flag);
	
	void CloseLidarSerial(void);
	
};


#endif //_LS01B_DRIVER_H_
