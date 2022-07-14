import rospy
from geometry_msgs.msg import Twist
from math import radians


class DrawASquare():
    def __init__(self):
        # initiliaze
        rospy.init_node('drawasquare', anonymous=False)

        # What to do you ctrl + c
        rospy.on_shutdown(self.shutdown)

        self.cmd_vel = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

        # 5 HZ
        r = rospy.Rate(5)

        # create two different Twist() variables.  One for moving forward.  One for turning 45 degrees.

        # let's go forward at 0.2 m/s
        move_cmd = Twist()
        move_cmd.linear.x = 0.1
        # by default angular.z is 0 so setting this isn't required

        # let's turn at 45 deg/s
        turn_cmd = Twist()
        turn_cmd.linear.x = 0
        turn_cmd.angular.z = radians(22.5)  # 45 deg/s in radians/s

        # two keep drawing squares.  Go forward for 2 seconds (10 x 5 HZ) then turn for 2 second
        # go forward 0.4 m (2 seconds * 0.2 m / seconds)
        rospy.loginfo("(0,0)->(0.4,0)")
        for x in range(0, 20):
            self.cmd_vel.publish(move_cmd)
            r.sleep()
        # turn 180 degrees
        rospy.loginfo("Turning180")
        for x in range(0, 40):
            self.cmd_vel.publish(turn_cmd)
            r.sleep()
        # go forward 0.8 m (2 seconds * 0.2 m / seconds)
        rospy.loginfo("(0.4,0)->(-0.4,0)")
        for x in range(0, 40):
            self.cmd_vel.publish(move_cmd)
            r.sleep()
        # turn 180 degrees
        rospy.loginfo("Turning180")
        for x in range(0, 40):
            self.cmd_vel.publish(turn_cmd)
            r.sleep()
        # go forward 0.4 m (2 seconds * 0.2 m / seconds)
        rospy.loginfo("(-0.4,0)->(0,0)")
        for x in range(0, 20):
            self.cmd_vel.publish(move_cmd)
            r.sleep()
        # turn 90 degrees
        rospy.loginfo("Turning90")
        for x in range(0, 20):
            self.cmd_vel.publish(turn_cmd)
            r.sleep()
        # go forward 0.4 m (2 seconds * 0.2 m / seconds)
        rospy.loginfo("(0,0)->(0,-0.4)")
        for x in range(0, 20):
            self.cmd_vel.publish(move_cmd)
            r.sleep()
        # turn 180 degrees
        rospy.loginfo("Turning180")
        for x in range(0, 40):
            self.cmd_vel.publish(turn_cmd)
            r.sleep()   
        # go forward 0.8 m (2 seconds * 0.2 m / seconds)
        rospy.loginfo("(0,-0.4)->(0,0.4)")
        for x in range(0, 40):
            self.cmd_vel.publish(move_cmd)
            r.sleep()    
        # turn 180 degrees
        rospy.loginfo("Turning180")
        for x in range(0, 40):
            self.cmd_vel.publish(turn_cmd)
            r.sleep()      
        # go forward 0.4 m (2 seconds * 0.2 m / seconds)
        rospy.loginfo("(0,0.4)->(0,0)")
        for x in range(0, 20):
            self.cmd_vel.publish(move_cmd)
            r.sleep()    
       # turn 270 degrees
        rospy.loginfo("Turning90")
        for x in range(0, 60):
            self.cmd_vel.publish(turn_cmd)
            r.sleep()
        
        
    def shutdown(self):
        # stop turtlebot
        rospy.loginfo("Stop Drawing Squares")
        self.cmd_vel.publish(Twist())
        rospy.sleep(1)


if __name__ == '__main__':
    try:
        DrawASquare()
    except:
        rospy.loginfo("node terminated.")
