import rospy
from geometry_msgs.msg import Twist
from math import radians


class TURN90DEGREE():
    def __init__(self):
        # initiliaze
        rospy.init_node('ninety_degree', anonymous=False)

        # What to do you ctrl + c
        rospy.on_shutdown(self.shutdown)

        self.cmd_vel = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

        # 10 HZ
        r = rospy.Rate(5);

        # create two different Twist() variables.  One for moving forward.  One for turning 45 degrees.

        # let's go forward at 0.2 m/s
        move_cmd = Twist()
        move_cmd.linear.x = 0
        # by default angular.z is 0 so setting this isn't required

        # let's turn at 45 deg/s
        turn_cmd = Twist()
        turn_cmd.linear.x = 0
        turn_cmd.angular.z = radians(22.5);  # 45 deg/s in radians/s

        for x in range(0, 80):
            self.cmd_vel.publish(turn_cmd)
            r.sleep()

    def shutdown(self):
        # stop turtlebot
        rospy.loginfo("STOP TURNING")
        self.cmd_vel.publish(Twist())
        rospy.sleep(1)


if __name__ == '__main__':
    try:
        TURN90DEGREE()
    except:
        rospy.loginfo("node terminated.")

