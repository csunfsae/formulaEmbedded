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
#include "fsae_electric_vehicle/can_message.h"
#include "fsae_electric_vehicle/suspension_offset.h"
#include "../../include/ADS7828.hpp"

int main(int argc, char **argv)
{
  std::string path = "/dev/i2c-0";
  int address = 0x49;
  ADS7828* adc_1 = new ADS7828(path, address); 
  int previous_pedal_value = 0;
  int delta_pedal = 0;
  //............................................................................................
  //.............ADDING SUPPORT FOR 8 ANALOG SENSORS MAINLY FOR TESTING ON ALL PORTS............
  //............................................................................................
  adc_1->add_sensor(0,360);
  adc_1->add_sensor(0,360);
  adc_1->add_sensor(0,360);
  adc_1->add_sensor(0,360);
  adc_1->add_sensor(0,360);
  adc_1->add_sensor(0,360);
  adc_1->add_sensor(0,360);
  //Basic ROS setup for the node
  ros::init(argc, argv, "ANALOG_DIGITAL_CONVERTER_0x49");
  ros::NodeHandle n;
  fsae_electric_vehicle::suspension_offset suspension_msg;
  fsae_electric_vehicle::analog_sensor steering_wheel_msg;
  fsae_electric_vehicle::analog_sensor accelerator_msg;
  fsae_electric_vehicle::analog_sensor brake_msg;
  fsae_electric_vehicle::can_message stop_command;
  stop_command.id = "201";
  stop_command.data = "toggle_analog";
  stop_command.speed = 0;
  ros::Publisher steering_wheel_topic = n.advertise<fsae_electric_vehicle::analog_sensor>("steering_wheel", 1000);
  ros::Publisher brake_topic = n.advertise<fsae_electric_vehicle::analog_sensor>("brake", 1000);
  ros::Publisher accelerator_topic = n.advertise<fsae_electric_vehicle::analog_sensor>("accelerator", 1000);
  ros::Publisher suspension_topic = n.advertise<fsae_electric_vehicle::suspension_offset>("suspension_offset", 1000);
  ros::Publisher can_bus_commands = n.advertise<fsae_electric_vehicle::can_message>("can_bus_commands", 1000);
  
  ros::Rate loop_rate(1000);
  adc_1->update();
  previous_pedal_value = adc_1->get_sensor_data(1);
  while(ros::ok()){
    adc_1->update();
    //............................................................................................
    //.............Just printing the values only channels 0 and 1 are sent to the web currently...
    //............................................................................................
    std::cout << "brake: " << adc_1->get_sensor_data(0) << std::endl; //Brake
    std::cout << "accelerator: " << adc_1->get_sensor_data(1) << std::endl; //Accelerator
    if(adc_1->get_sensor_data(1) > previous_pedal_value){
      delta_pedal = (adc_1->get_sensor_data(1) - previous_pedal_value);
      previous_pedal_value = adc_1->get_sensor_data(1);
      if(delta_pedal>100){
        can_bus_commands.publish(stop_command);
      }
    }else{
      previous_pedal_value = adc_1->get_sensor_data(1);
    }
    std::cout << "left front suspension: " << adc_1->get_sensor_data(2) << std::endl;//left suspension displacement front
    std::cout << "right front suspension: " << adc_1->get_sensor_data(3) << std::endl;//right suspension displacement front
    std::cout << "steering wheel: " << adc_1->get_sensor_data(4) << std::endl;//steering wheel
    std::cout << "left back suspension: " << adc_1->get_sensor_data(5) << std::endl;//left suspension displacement back
   std::cout << "right back suspension: " << adc_1->get_sensor_data(6) << std::endl;//right suspension displacement back

    accelerator_msg.value = adc_1->get_sensor_data(1);
    brake_msg.value = adc_1->get_sensor_data(0);

    steering_wheel_msg.value = adc_1->get_sensor_data(4);

    suspension_msg.front_left_value = adc_1->get_sensor_data(2);
    suspension_msg.front_right_value = adc_1->get_sensor_data(3);
    suspension_msg.back_left_value = adc_1->get_sensor_data(5);
    suspension_msg.back_right_value = adc_1->get_sensor_data(6);

    brake_topic.publish(brake_msg);
    steering_wheel_topic.publish(steering_wheel_msg);
    accelerator_topic.publish(accelerator_msg);
    suspension_topic.publish(suspension_msg);

    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}

