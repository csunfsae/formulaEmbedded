/*
 * CSUN FSAE EV 2018
 * ROS NODE: DUMMY READER 
 * Topics Subscribed: ANY 
 * Topics Publishing: None
 * Tag: N/A 
 * Summary:
 *   The purpose of this node is to recieve data from any node. Its intention 
 *   is used to be for testing purposes.
*/

#include "ros/ros.h"
#include "std_msgs/String.h"
#include <ctime>
#include <sstream>
#include <fsae_electric_vehicle/wheel_velocity.h>
#include <iostream>
#include <stdio.h>


static int callback(void *NotUsed, int argc, char **argv, char **azColName); 
void chatterCallback(const fsae_electric_vehicle::wheel_velocity::ConstPtr& msg);


int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("sinWave", 1000, chatterCallback);
  ros::spin();

  return 0;
}

/**
 * Functions
 */

static int callback(void *NotUsed, int argc, char **argv, char **azColName) {
   int i;
   for(i = 0; i<argc; i++) {
         printf("%s = %s\n", azColName[i], argv[i] ? argv[i] : "NULL");
      }
   printf("\n");
   return 0;
}

void chatterCallback(const fsae_electric_vehicle::wheel_velocity::ConstPtr& msg)
{
  std::cout << msg->front_left_time << std::endl;
}
