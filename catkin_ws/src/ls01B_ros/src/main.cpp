#include <iostream>
#include <std_msgs/Int32.h>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "sensor_msgs/LaserScan.h"
#include "ls01b_driver.h"
using namespace std;

bool is_scan_stop = false;
bool is_motor_stop = false;
bool zero_as_max = true;
bool min_as_zero = true;
bool inverted = true;
string laser_link = "laser";
double angle_disable_min = -1;
double angle_disable_max = -1;
lidar_driver driver;

void publish_scan(ros::Publisher *pub, double *dist,/* double *intensities, */int count, ros::Time start, double scan_time)
{
	static int scan_count = 0;
	sensor_msgs::LaserScan scan_msg;
	scan_msg.header.stamp = start;
	scan_msg.header.frame_id = laser_link;
	scan_count++;
	// scan_msg.angle_min = (angle_disable_min < 0) ? 0 : angle_disable_min;
	// scan_msg.angle_max = (angle_disable_max < 0) ? 2 * M_PI : angle_disable_max;
	scan_msg.angle_min = 0.0;
	scan_msg.angle_max = 2 * M_PI;
	scan_msg.angle_increment = (scan_msg.angle_max - scan_msg.angle_min) / (double) (count - 1);
	scan_msg.scan_time = scan_time;
	scan_msg.time_increment = scan_time / (double) (count - 1);

	scan_msg.range_min = 0.1;
	scan_msg.range_max = 25.0;

	scan_msg.intensities.resize(count);
	scan_msg.ranges.resize(count);

	if (!inverted)
	{
	for (int i = count - 1; i >= 0; i--)
	{
		if((i >= angle_disable_min) && (i < angle_disable_max))		// disable angle part
		{
			if (min_as_zero)
				scan_msg.ranges[i] = 0.0;
			else
				scan_msg.ranges[i] = std::numeric_limits<float>::infinity();
		}
		else if(dist[count - i - 1] == 0.0 && zero_as_max)
			scan_msg.ranges[i] = scan_msg.range_max - 0.2;
		else if(dist[count - i - 1] == 0.0)
			if (min_as_zero)
				scan_msg.ranges[i] = 0.0;
			else
				scan_msg.ranges[i] = std::numeric_limits<float>::infinity();
		else
			scan_msg.ranges[i] = dist[count - i - 1] / 1000.0;
		//scan_msg.intensities[i] = floor(intensities[count - i - 1]);
	}}
	else
	{
		for (int i = 0; i <= 179; i++)
			{
				if((i >= angle_disable_min) && (i < angle_disable_max))
				{
					if (min_as_zero)
						scan_msg.ranges[i] = 0.0;
					else
						scan_msg.ranges[i] = std::numeric_limits<float>::infinity();
				}
				else if(dist[179-i] == 0.0 && zero_as_max)
					scan_msg.ranges[i] = scan_msg.range_max - 0.2;
				else if(dist[179-i] == 0.0)
					if (min_as_zero)
						scan_msg.ranges[i] = 0.0;
					else
						scan_msg.ranges[i] = std::numeric_limits<float>::infinity();
				else
					scan_msg.ranges[i] = dist[179-i] / 1000.0;
				//scan_msg.intensities[i] = floor(intensities[179-i]);
			}
		for (int i = 180; i < 360; i++)
			{
				if((i >= angle_disable_min) && (i < angle_disable_max))
				{
					if (min_as_zero)
						scan_msg.ranges[i] = 0.0;
					else
						scan_msg.ranges[i] = std::numeric_limits<float>::infinity();
				}
				else if(dist[540-i] == 0.0 && zero_as_max)
					scan_msg.ranges[i] = scan_msg.range_max - 0.2;
				else if(dist[540-i] == 0.0)
					if (min_as_zero)
						scan_msg.ranges[i] = 0.0;
					else
						scan_msg.ranges[i] = std::numeric_limits<float>::infinity();
				else
					scan_msg.ranges[i] = dist[540-i] / 1000.0;
				//scan_msg.intensities[i] = floor(intensities[540-i]);
			}
	}
	pub->publish(scan_msg);
}

void startStopCB(const std_msgs::Int32ConstPtr msg)
{
	ls01b_driver_command_protocol cmd = (ls01b_driver_command_protocol) msg->data;
	switch (cmd)
	{
	case DATA_STOP:
		if (!is_scan_stop)
		{
			driver.SendLidarCommand(DATA_STOP, 0);
			is_scan_stop = true;
			ROS_INFO("stop scan");
		}
		break;
	case STOP:
		if (!is_scan_stop)
		{
			driver.SendLidarCommand(DATA_STOP, 0);
			is_scan_stop = true;
			ROS_INFO("stop scan");
		}
		if (!is_motor_stop)
		{
			driver.SendLidarCommand(STOP, 0);
			is_motor_stop = true;
			ROS_INFO("stop motor");
		}
		break;
	case DATA_SCAN:
		if (is_scan_stop)
		{
			ROS_INFO("start scan");
			int res = driver.SendLidarCommand(START, 0);
			ROS_INFO("start: %d", res);
			is_scan_stop = false;
			is_motor_stop = false;
		}
		break;
	default:
		ROS_WARN("Unkonw command: %d ", cmd);
		break;
	}
}

int main(int argv, char **argc)
{
	ros::init(argv, argc, "ls01B");
	ros::NodeHandle n;
	string scan_topic = "scan";
	string port = "/dev/ttyUSB0";
	ros::param::get("~scan_topic", scan_topic);
	ros::param::get("~laser_link", laser_link);
	ros::param::get("~serial_port", port);
	ros::param::get("~angle_disable_min", angle_disable_min);
	ros::param::get("~angle_disable_max", angle_disable_max);
	ros::param::get("~zero_as_max", zero_as_max);
	ros::param::get("~min_as_zero", min_as_zero);
	ros::param::get("~inverted", inverted);
	ros::Publisher scan_pub = n.advertise<sensor_msgs::LaserScan>(scan_topic, 1000);
	ros::Subscriber stop_sub = n.subscribe<std_msgs::Int32>("startOrStop", 10, startStopCB);
	int ret;
	ret = driver.OpenLidarSerial(port.c_str(), B460800);
	if (ret < 0)
	{
		ROS_ERROR("could not open port:%s", port.c_str());
		return 0;
	}
	else
	{
		ROS_INFO("open port:%s", port.c_str());
	}

	if (inverted)
	{
		ROS_INFO("This laser is inverted, zero degree direction is align with line");
	}

	//driver.StartScan();
        ret = driver.SendLidarCommand(START, 0);
         if (ret < 0){
		ALOGI("send the START command fail\n");
		return -1;
	}


	ret = driver.SendLidarCommand(DATA_SCAN, 0);
	if (ret < 0){
		ALOGI("send the DATA_SCAN command fail\n");
		return -1;
	}

	ROS_INFO("Send start command successfully");

	//double angle[PACKLEN + 10];
	//double distance[PACKLEN + 10];
        unsigned short angle_or_strenght[1440];
	unsigned short distance[1440];
	double data[1440];
	//double data_intensity[PACKLEN + 10];
	//double speed;
        unsigned short speed;
	unsigned short angle_or_strenght_flag;
	int count = 0;

	ros::Time starts = ros::Time::now();
	ros::Time ends = ros::Time::now();
	while (ros::ok())
	{
		ros::spinOnce();

		if (is_scan_stop)
			continue;

		// ROS_INFO_THROTTLE(2, "talker");
		//memset(data, 0, sizeof(data));
		int ret = driver.GetLidarScanData(angle_or_strenght, distance, 1440, &speed, &angle_or_strenght_flag);
		for (int i = 0; i < ret; i++)
		{
			data[i] = distance[i];
			//data_intensity[i] = angle[i];
		}
		ROS_INFO_THROTTLE(30, "ls01B works fine!");
		ends = ros::Time::now();
		float scan_duration = (ends - starts).toSec() * 1e-3;
		publish_scan(&scan_pub, data, /*data_intensity,*/ ret, starts, scan_duration);
		starts = ends;
	}
	driver.SendLidarCommand(DATA_STOP, 0);
	driver.SendLidarCommand(STOP, 0);
	driver.CloseLidarSerial();
	ROS_INFO("Keyboard Interrupt, ls01B stop!");

	return 0;
}

