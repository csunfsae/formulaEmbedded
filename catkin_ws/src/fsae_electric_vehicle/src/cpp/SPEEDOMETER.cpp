#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>
#include <typeinfo>
#include <iostream>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <linux/i2c.h>
#include <linux/i2c-dev.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include "fsae_electric_vehicle/vehicle_speed.h"

int main(int argc, char **argv){
  ros::init(argc, argv, "SPEEDOMETER");
  ros::NodeHandle n;
  ros::Publisher speedometer_topic = n.advertise<fsae_electric_vehicle::vehicle_speed>("vehicle_speed", 1000);
  fsae_electric_vehicle::vehicle_speed speed;
  ros::Rate loop_rate(1000);

	int file_i2c;
	int length;
  long data=0;

  long buffer[1] = {0};
	char *filename = (char*)"/dev/i2c-0";
	int addr = 0x08;

  if ((file_i2c = open(filename, O_RDWR)) < 0)
    {
      std::cout << "Failed to open the i2c bus\n";
    }

  if (ioctl(file_i2c, I2C_SLAVE, addr) < 0)
    {
      std::cout << "Failed to acquire bus access and/or talk to slave.\n";
    }

  while(ros::ok()){
    if (read(file_i2c, buffer, length) != length)
    {
      std::cout << "Failed to read from the i2c bus.\n";
    }
    else
    {
      if(buffer[0] != 0){
        data = (-1) * ((-256) - buffer[0]);
      }
      else{
        data = (-256) - buffer[0];
      }
    }
    std::cout << data << std::endl;
    speed.value = (float)data;
    speedometer_topic.publish(speed);
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}
