/*
 * CSUN FSAE EV 2018
 * ROS NODE: SinWave 
 * Topics Recieved: N/A 
 * Tag: N/A
 * Summary:
 *   This node is primarily used for generating doubles as a way to create other nodes with a lack of data 
 *   and with no rosbags available. 
 */

#include "ros/ros.h"
#include "std_msgs/String.h"
#include "fsae_electric_vehicle/wheel_velocity.h"
#include <sstream>
#include <string>
#include <math.h>
#include <comedilib.h>
#define PI 3.14159265

/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */

class Wheel_velocity_data{
  public:
    double value;
    std::string time;
  };


int main(int argc, char **argv)
{
  /**
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
  Wheel_velocity_data front_left;
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
  ros::Publisher wheel_velocity_topic = n.advertise<fsae_electric_vehicle::wheel_velocity>("sinWave", 1000);

  ros::Rate loop_rate(10);

  /**
   * A count of how many messages we have sent. This is used to create
   * a unique string for each message.
   */
  int count = 0;
  double wave;
  while (ros::ok())
  {
    /**
     * This is a message object. You stuff it with data, and then publish it.
     */
    if(count == 360){
			count = 0;
		}
    fsae_electric_vehicle::wheel_velocity wheel_velocity;
    wave = 100 * sin (count*PI/180); 
    std::stringstream ss;
    front_left.time = std::to_string(wave); 
    ss << front_left.time << count;
    wheel_velocity.front_left_time = ss.str();

    ROS_INFO("%s", wheel_velocity.front_left_time.c_str());

    /**
     * The publish() function is how you send messages. The parameter
     * is the message object. The type of this object must agree with the type
     * given as a template parameter to the advertise<>() call, as was done
     * in the constructor above.
     */
    wheel_velocity_topic.publish(wheel_velocity);

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}
