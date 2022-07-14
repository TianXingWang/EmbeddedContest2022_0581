#!/usr/bin/env python

from __future__ import print_function
import sys
import rospy
from sensor_msgs.msg import LaserScan
from std_msgs.msg import String

class DoFilter:
    def __init__(self):

        self.sub = rospy.Subscriber("scan", LaserScan, self.callback)
        self.pub = rospy.Publisher("filteredscan", LaserScan, queue_size=10)

    def callback(self, data):

        newdata = data
        newdata.ranges = list(data.ranges)
        newdata.intensities = list(data.intensities)
        for x in range(0,180):
            newdata.ranges[x]=0
            newdata.intensities[x]=0


        self.pub.publish(newdata)
        rospy.loginfo(data)


if __name__ == '__main__':

    rospy.init_node('LidarFilter', anonymous=False)
    lidar = DoFilter()

    rospy.spin()

