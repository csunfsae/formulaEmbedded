/*
 * CSUN FSAE EV 2018
 * ROS NODE: VISHAY_POTENTIOMETER_PE30_LONG
 * Topics Subscribed: None 
 * Topics Publishing: steering_wheel 
 * Tag: 
 * TODO FIX ITERATION OVER SENSORS 
 * TODO TEST SENSOR UNIT CONVERSION
 * TODO ARDUINO INTERGRATION
*/
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
#include "fsae_electric_vehicle/analog_sensor.h"
#include "../../include/ADS7828.hpp"

int main(int argc, char **argv)
{
  std::string path = "/dev/i2c-0";
  int address = 0x49;
  ADS7828* adc_1 = new ADS7828(path, address); 
  adc_1->add_sensor(0,360);
  adc_1->add_sensor(0,360);
  //Basic ROS setup for the node
  ros::init(argc, argv, "ANALOG_DIGITAL_CONVERTER_0x49");
  ros::NodeHandle n;
  std::cout << adc_1->get_sensor_data(0) << std::endl;
  fsae_electric_vehicle::analog_sensor front_left_msg;
  fsae_electric_vehicle::analog_sensor front_right_msg;
  fsae_electric_vehicle::analog_sensor back_left_msg;
  fsae_electric_vehicle::analog_sensor back_right_msg;
  fsae_electric_vehicle::analog_sensor steering_wheel_msg;
  fsae_electric_vehicle::analog_sensor accelerator_msg;
  fsae_electric_vehicle::analog_sensor brake_msg;

  ros::Publisher steering_wheel_topic = n.advertise<fsae_electric_vehicle::analog_sensor>("steering_wheel", 1000);
  ros::Publisher accelerator_topic = n.advertise<fsae_electric_vehicle::analog_sensor>("accelerator", 1000);

  ros::Rate loop_rate(500);

  while(ros::ok()){
    adc_1->update();
    std::cout << "adc 0: " << adc_1->get_sensor_data(0) << std::endl;
    std::cout << "adc 1: " << adc_1->get_sensor_data(1) << std::endl;
    accelerator_msg.value = adc_1->get_sensor_data(0);
    steering_wheel_msg.value = adc_1->get_sensor_data(1);
    steering_wheel_topic.publish(steering_wheel_msg);
    accelerator_topic.publish(accelerator_msg);
    ros::spinOnce();
    loop_rate.sleep();
  }


  return 0;
}

