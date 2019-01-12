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

/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */ 
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "fsae_electric_vehicle/wheel_velocity.h"
#include <sstream>
#include <string>
#include "RTIMULib2/RTIMULib/RTIMULib.h"

#define PI 3.14159265

int main(int argc, char **argv)
{
  RTIMUSettings *imu_settings = new RTIMUSettings("Ivensense MPU9250");
  RTIMU *imu_pointer = RTIMU::createIMU(imu_settings);
  imu_pointer->IMUInit();
  /**
   *
   * The ros::init() function needs to see argc and argv so that it can perform
   * any ROS arguments and name remapping that were provided at the command line.
   * For programmatic remappings you can use a different version of init() which takes
   * remappings directly, but for most command-line programs, passing argc and argv is
   * the easiest way to do it.  The third argument to init() is the name of the node.
   *
   * You must call one of the versions of ros::init() before using any other
   * part of the ROS system.
   */
  ros::init(argc, argv, "talker");
  /**
   * NodeHandle is the main access point to communications with the ROS system.
   * The first NodeHandle constructed will fully initialize this node, and the last
   * NodeHandle destructed will close down the node.
   */
  ros::NodeHandle n;
  //Wheel_velocity_data front_left;
  //front_left.first = "hi friend!!!";
  /**
   * The advertise() function is how you tell ROS that you want to
   * publish on a given topic name. This invokes a call to the ROS
   * master node, which keeps a registry of who is publishing and who
   * is subscribing. After this advertise() call is made, the master
   * node will notify anyone who is trying to subscribe to this topic name,
   * and they will in turn negotiate a peer-to-peer connection with this
   * node.  advertise() returns a Publisher object which allows you to
   * publish messages on that topic through a call to publish().  Once
   * all copies of the returned Publisher object are destroyed, the topic
   * will be automatically unadvertised.
   *
   * The second parameter to advertise() is the size of the message queue
   * used for publishing messages.  If messages are published more quickly
   * than we can send them, the number here specifies how many messages to
   * buffer up before throwing some away.
   */
  //ros::Publisher wheel_velocity_topic = n.advertise<fsae_electric_vehicle::wheel_velocity>("sinWave", 1000);

  ros::Rate loop_rate(10);

  /**
   * A count of how many messages we have sent. This is used to create
   * a unique string for each message.
   */
  int count = 0;
  while (ros::ok())
  {
    //ROS_INFO("%s", wheel_velocity.front_left_time.c_str());

    /**
     * The publish() function is how you send messages. The parameter
     * is the message object. The type of this object must agree with the type
     * given as a template parameter to the advertise<>() call, as was done
     * in the constructor above.
     */

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}
