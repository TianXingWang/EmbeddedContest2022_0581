#include <ros/ros.h>
#include <signal.h>
#include <geometry_msgs/Twist.h>
#include <tf/transform_listener.h>
#include <nav_msgs/Odometry.h>
#include <string.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <visualization_msgs/Marker.h>
#include <cmath>

ros::Publisher cmdVelPub;
ros::Publisher marker_pub;

void shutdown(int sig)
{
  cmdVelPub.publish(geometry_msgs::Twist());
  ros::Duration(1).sleep(); // sleep for  a second
  ROS_INFO("nav_square.cpp ended!");
  ros::shutdown();
}

void init_markers(visualization_msgs::Marker *marker)
{
  marker->ns       = "waypoints";
  marker->id       = 0;
  marker->type     = visualization_msgs::Marker::CUBE_LIST;
  marker->action   = visualization_msgs::Marker::ADD;
  marker->lifetime = ros::Duration();//0 is forever
  marker->scale.x  = 0.2;
  marker->scale.y  = 0.2;
  marker->color.r  = 1.0;
  marker->color.g  = 0.7;
  marker->color.b  = 1.0;
  marker->color.a  = 1.0;

  marker->header.frame_id = "odom";
  marker->header.stamp = ros::Time::now();

}
int main(int argc, char** argv)
{
  ros::init(argc, argv, "nav_move_base");
  std::string topic = "/cmd_vel";
  ros::NodeHandle node;
  //Subscribe to the move_base action server
  actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> ac("move_base",true);

  //Define a marker publisher.
  marker_pub = node.advertise<visualization_msgs::Marker>("waypoint_markers", 10);

  //for init_markers function
  visualization_msgs::Marker  line_list;

  signal(SIGINT, shutdown);
  ROS_INFO("move_base_square.cpp start...");

  //How big is the square we want the robot to navigate?
  double square_size = 3.0;

  //Create a list to hold the target quaternions (orientations)
  geometry_msgs::Quaternion quaternions[4];

  //convert the angles to quaternions
  double angle = M_PI/2;
  int angle_count = 0;
  for(angle_count = 0; angle_count < 4;angle_count++ )
  {
      quaternions[angle_count] = tf::createQuaternionMsgFromRollPitchYaw(0, 0, angle);
      angle = angle + M_PI/2;
  }

  //a pose consisting of a position and orientation in the map frame.
  geometry_msgs::Point point;
  geometry_msgs::Pose pose_list[4];
  point.x = square_size;
  point.y = 0.0;
  point.z = 0.0;
  pose_list[0].position = point;
  pose_list[0].orientation = quaternions[0];

  point.x = square_size;
  point.y = square_size;
  point.z = 0.0;
  pose_list[1].position = point;
  pose_list[1].orientation = quaternions[1];

  point.x = 0.0;
  point.y = square_size;
  point.z = 0.0;
  pose_list[2].position = point;
  pose_list[2].orientation = quaternions[2];

  point.x = 0.0;
  point.y = 0.0;
  point.z = 0.0;
  pose_list[3].position = point;
  pose_list[3].orientation = quaternions[3];

  //Initialize the visualization markers for RViz
  init_markers(&line_list);

  //Set a visualization marker at each waypoint
  for(int i = 0; i < 4; i++)
  {
    line_list.points.push_back(pose_list[i].position);
  }

  //Publisher to manually control the robot (e.g. to stop it, queue_size=5)
  cmdVelPub = node.advertise<geometry_msgs::Twist>(topic, 5);



  ROS_INFO("Waiting for move_base action server...");
  //Wait 60 seconds for the action server to become available
  if(!ac.waitForServer(ros::Duration(60)))
  {
    ROS_INFO("Can't connected to move base server");
    return 1;
  }
  ROS_INFO("Connected to move base server");
  ROS_INFO("Starting navigation test");

  //Initialize a counter to track waypoints
  int count = 0;
  //Cycle through the four waypoints
  while( (count < 4) && (ros::ok()) )
  {
     //Update the marker display
     marker_pub.publish(line_list);

     //Intialize the waypoint goal
     move_base_msgs::MoveBaseGoal goal;

     //Use the map frame to define goal poses
     goal.target_pose.header.frame_id = "map";

     //Set the time stamp to "now"
     goal.target_pose.header.stamp = ros::Time::now();

     //Set the goal pose to the i-th waypoint
     goal.target_pose.pose = pose_list[count];

     //Start the robot moving toward the goal
     //Send the goal pose to the MoveBaseAction server
     ac.sendGoal(goal);

    //Allow 3 minute to get there
    bool finished_within_time = ac.waitForResult(ros::Duration(180));

    //If we dont get there in time, abort the goal
    if(!finished_within_time)
    {
        ac.cancelGoal();
        ROS_INFO("Timed out achieving goal");
    }
    else
    {
        //We made it!
        if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
        {
            ROS_INFO("Goal succeeded!");
        }
        else
        {
            ROS_INFO("The base failed for some reason");
        }
    }
     count += 1;
  }
  ROS_INFO("move_base_square.cpp end...");
  return 0;
}
