/*
 * CSUN FSAE EV 2018
 * ROS NODE: I2C_IMU
 * Topics Subscribed: None 
 * Topics Publishing: Gyro_Data, Accel_Data, Magno_Data, Temp_Data
 * Tag: RN1 
 * Summary:
 *   The purpose of this node is to read data via I2C bus 1 using the RTIMULib2 library. Data should be pre 
 *   filtered by the library due to kalmin filteration being built in. 
 * Related:
 *   Documentation:
 *     - COMP-490-FSAE/Embedded/sqliteUML.html (draw.io)
 *     - COMP-490-FSAE/Embedded/JetsonRos.html (draw.io)
 *   Library: 
 *     - https://github.com/RTIMULib/RTIMULib2.git 
 *     - Google Drive: Embedded/Software/WaveShare-10DOF-IMU
*/
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "fsae_electric_vehicle/wheel_velocity.h"
#include <sstream>
#include <string>
#include <iostream>
#include "RTIMULib2/RTIMULib/RTIMULib.h"

#define PI 3.14159265

int main(int argc, char **argv)
{

  //Setting up the IMU with the RTIMULib2 library Note: Our waveshare model conatins the 
  //MPU9255 but the MPU9250 will get the data for us as well
  RTIMUSettings *imu_settings = new RTIMUSettings("Ivensense MPU9250");
  RTIMU *imu_pointer = RTIMU::createIMU(imu_settings);
  RTIMU_DATA* data = new RTIMU_DATA();
  imu_pointer->IMUInit();
  //The ros node iterations are limited by the rate at which the IMU can send data
  int iteration_rate = imu_pointer->IMUGetPollInterval();

  //Basic ROS setup for the node
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;
  ros::Rate loop_rate(iteration_rate);

  int count = 0;
  while (ros::ok())
  {

    while(imu_pointer->IMURead()){
      *data = imu_pointer->getIMUData(); 
    }
    std::cout << "x: "<< data->gyro.x() << std::endl;
    std::cout << "y: "<< data->gyro.y() << std::endl;
    std::cout << "z: "<< data->gyro.z() << std::endl;
    std::cout << "\f";
    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}
