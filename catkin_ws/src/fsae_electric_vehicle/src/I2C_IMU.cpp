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
#include <sstream>
#include <string>
#include <iostream>
#include "RTIMULib2/RTIMULib/RTIMULib.h"
#include "fsae_electric_vehicle/imu_data.h"
#define PI 3.14159265

void clear_screen();

int main(int argc, char **argv)
{
  //Basic ROS setup for the node
  ros::init(argc, argv, "imu_data");
  ros::NodeHandle n;

  fsae_electric_vehicle::imu_data waveshare_msg; 
  ros::Publisher imu_data_topic = n.advertise<fsae_electric_vehicle::imu_data>("imu_data", 1000);
  //Setting up the IMU with the RTIMULib2 library Note: Our waveshare model conatins the 
  //MPU9255 but the MPU9250 will get the data for us as well
  RTIMUSettings *imu_settings = new RTIMUSettings();
  imu_settings->m_fusionType = 0; 

  RTIMU *imu_pointer = RTIMU::createIMU(imu_settings);
  RTIMU_DATA* data = new RTIMU_DATA();
  imu_pointer->IMUInit();
  //The ros node iterations are limited by the rate at which the IMU can send data
  int iteration_rate = imu_pointer->IMUGetPollInterval();
  ros::Rate loop_rate(iteration_rate);

  int count = 0;
  while (ros::ok())
  {

    while(imu_pointer->IMURead()){
      *data = imu_pointer->getIMUData(); 
    }

    waveshare_msg.gyro_x = (data->gyro.x() * RTMATH_RAD_TO_DEGREE);
    waveshare_msg.gyro_y = (data->gyro.y() * RTMATH_RAD_TO_DEGREE);
    waveshare_msg.gyro_z = (data->gyro.z() * RTMATH_RAD_TO_DEGREE);

    waveshare_msg.accel_x = data->accel.x();
    waveshare_msg.accel_y = data->accel.y();
    waveshare_msg.accel_z = data->accel.z();

    waveshare_msg.compass_x = data->compass.x();
    waveshare_msg.compass_y = data->compass.y();
    waveshare_msg.compass_z = data->compass.z();

    imu_data_topic.publish(waveshare_msg);

    clear_screen();
    std::cout << "Gyro Values" << std::endl;
    std::cout << "x: "<< data->gyro.x() * RTMATH_RAD_TO_DEGREE << std::endl;
    std::cout << "y: "<< data->gyro.y() * RTMATH_RAD_TO_DEGREE << std::endl;
    std::cout << "z: "<< data->gyro.z() * RTMATH_RAD_TO_DEGREE << std::endl;

    std::cout << "Accel Values" << std::endl;
    std::cout << "x: "<< data->accel.x() << std::endl;
    std::cout << "y: "<< data->accel.y() << std::endl;
    std::cout << "z: "<< data->accel.z() << std::endl;

    std::cout << "Compass Values" << std::endl;
    std::cout << "x: "<< data->compass.x() << std::endl;
    std::cout << "y: "<< data->compass.y() << std::endl;
    std::cout << "z: "<< data->compass.z() << std::endl;


    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}


void clear_screen(){
  for(int x=0;x<15;x++){
    std::cout << "\n";
  }

}
