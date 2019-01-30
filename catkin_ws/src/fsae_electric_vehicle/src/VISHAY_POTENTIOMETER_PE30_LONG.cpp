/*
 * CSUN FSAE EV 2018
 * ROS NODE: VISHAY_POTENTIOMETER_PE30_LONG
 * Topics Subscribed: None 
 * Topics Publishing: steering_wheel 
 * Tag: 
*/
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>
#include <iostream>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <linux/i2c.h>
#include <linux/i2c-dev.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include "fsae_electric_vehicle/steering_wheel.h"
#define PI 3.14159265

void clear_screen();

int main(int argc, char **argv)
{
  int file;
  std::string filename = "/dev/i2c-1";
  if ((file = open(filename.c_str(), O_RDWR)) < 0) {
    /* ERROR HANDLING: you can check errno to see what went wrong */
    perror("Failed to open the i2c bus");
    exit(1);
  }

  int address = 0x49; 
  if (ioctl(file, O_RDWR , address) < 0) {
    printf("Failed to acquire bus access and/or talk to slave.\n");
    /* ERROR HANDLING; you can check errno to see what went wrong */
    exit(1);
  }
  //Basic ROS setup for the node
  ros::init(argc, argv, "VISHAY_POTENTIOMETER_PE30_LONG");
  ros::NodeHandle n;

  fsae_electric_vehicle::steering_wheel steering_wheel_msg; 
  ros::Publisher steering_wheel_topic = n.advertise<fsae_electric_vehicle::steering_wheel>("steering_wheel", 1000);
  ros::Rate loop_rate(1000);


  while(ros::ok()){

    std::cout << "hello world";
    ros::spinOnce();
    loop_rate.sleep();
    clear_screen();
  }


  return 0;
}


void clear_screen(){
  for(int x=0;x<15;x++){
    std::cout << "\n";
  }

}
