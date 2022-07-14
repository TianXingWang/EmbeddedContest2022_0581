#!/usr/bin/env python

import rospy
from sensor_msgs.msg import LaserScan

def callback(scan):


    rospy.loginfo(scan.header)

def listener():
    rospy.init_node('laser_listener', anonymous=False)
    rospy.Subscriber('scan', LaserScan, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
