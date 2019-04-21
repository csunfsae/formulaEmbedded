/* A simple SocketCAN example */

#include "ros/ros.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <iostream>
#include <sys/ioctl.h>
#include <net/if.h>
#include <linux/can.h>
#include <linux/can/raw.h>
#include "fsae_electric_vehicle/can_message.h"

int soc;
int read_can_port;

int open_port(const char *port)
{
    struct ifreq ifr;
    struct sockaddr_can addr;

    /* open socket */
    soc = socket(PF_CAN, SOCK_RAW, CAN_RAW);
    if(soc < 0)
    {
        return (-1);
    }

    addr.can_family = AF_CAN;
    strcpy(ifr.ifr_name, port);

    if (ioctl(soc, SIOCGIFINDEX, &ifr) < 0)
    {

        return (-1);
    }

    addr.can_ifindex = ifr.ifr_ifindex;

    fcntl(soc, F_SETFL, O_NONBLOCK);

    if (bind(soc, (struct sockaddr *)&addr, sizeof(addr)) < 0)
    {

        return (-1);
    }

    return 0;
}
///////////////////////////////////////////////////////
//TODO: FOR LOOP CAUSEING SEG FAULT??
///////////////////////////////////////////////////////
void set_speed(int16_t target, struct can_frame *frame){
  int retval;
  unsigned char data[8];
  frame->can_id = 0x201;
  frame->can_dlc = 8;
  data[0] = 0x31;
  data[1] = target & 0xFF;
  data[2] = (target >> 8);
  data[3] = 0x00;
  data[4] = 0x00;
  data[5] = 0x00;
  data[6] = 0x00;
  data[7] = 0x00;
  frame->data[0] = data[0];
  frame->data[1] = data[1];
  frame->data[2] = data[2];
  frame->data[3] = data[3];
  frame->data[4] = data[4];
  frame->data[5] = data[5];
  frame->data[6] = data[6];
  frame->data[7] = data[7];
  retval = write(soc, frame, sizeof(struct can_frame));
}

void stop_motor(struct can_frame *frame){
  int retval;
  unsigned char data[8];
  frame->can_id = 0x201;
  frame->can_dlc = 8;
  data[0] = 0x31;
  data[1] = 0x00;
  data[2] = 0x00;
  data[3] = 0x00;
  data[4] = 0x00;
  data[5] = 0x00;
  data[6] = 0x00;
  data[7] = 0x00;
  frame->data[0] = data[0];
  frame->data[1] = data[1];
  frame->data[2] = data[2];
  frame->data[3] = data[3];
  frame->data[4] = data[4];
  frame->data[5] = data[5];
  frame->data[6] = data[6];
  frame->data[7] = data[7];
  retval = write(soc, frame, sizeof(struct can_frame));
}

void clear_codes(struct can_frame *frame){
  int retval;
  unsigned char data[8];
  frame->can_id = 0x201;
  frame->can_dlc = 8;
  data[0] = 0x8E;
  data[1] = 0x54;
  data[2] = 0x41;
  data[3] = 0x00;
  data[4] = 0x00;
  data[5] = 0x00;
  data[6] = 0x00;
  data[7] = 0x00;
  frame->data[0] = data[0];
  frame->data[1] = data[1];
  frame->data[2] = data[2];
  frame->data[3] = data[3];
  frame->data[4] = data[4];
  frame->data[5] = data[5];
  frame->data[6] = data[6];
  frame->data[7] = data[7];
  retval = write(soc, frame, sizeof(struct can_frame));
}

void toggle_control(bool digital, struct can_frame *frame){
  int retval;
  unsigned char data[8];
  frame->can_id = 0x201;
  frame->can_dlc = 8;
  data[0] = 0x36;
  if(digital)
    data[2] = 0x00;
  else
    data[2] = 0x20;
  data[1] = 0x12;
  data[3] = 0x00;
  data[4] = 0x00;
  data[5] = 0x00;
  data[6] = 0x00;
  data[7] = 0x00;
  frame->data[0] = data[0];
  frame->data[1] = data[1];
  frame->data[2] = data[2];
  frame->data[3] = data[3];
  frame->data[4] = data[4];
  frame->data[5] = data[5];
  frame->data[6] = data[6];
  frame->data[7] = data[7];
  retval = write(soc, frame, sizeof(struct can_frame));
}

void send_port(const fsae_electric_vehicle::can_message& msg)
{
    struct can_frame *frame;
    int retval;
    unsigned char data[8];
    int16_t target=4100;
    float percentage = (float)msg.speed;
    if(percentage == 0){
      target = 0;
    }else{
      target = target * (percentage/100);
    }
    std::cout << target << std::endl;
    std::cout << msg.data << std::endl;

    if(msg.data == "accelerate"){
      set_speed(target, frame);
    }else if(msg.data == "stop"){
      stop_motor(frame);
    }else if(msg.data == "clear"){
      clear_codes(frame);
    }else if(msg.data == "toggle_digital"){
      toggle_control(true, frame);
    }else if(msg.data == "toggle_analog"){
      toggle_control(false, frame);
    }
}

/* this is just an example, run in a thread */
fsae_electric_vehicle::can_message read_port(fsae_electric_vehicle::can_message can_message)
{
    struct can_frame frame_rd;
    int recvbytes = 0;
    std::string can_data_string = "";
    read_can_port = 1;
    struct timeval timeout = {1, 0};
    fd_set readSet;
    FD_ZERO(&readSet);
    FD_SET(soc, &readSet);

    if (select((soc + 1), &readSet, NULL, NULL, &timeout) >= 0)
    {
        if (!read_can_port)
        {
          return can_message;
        }
        if (FD_ISSET(soc, &readSet))
        {
            recvbytes = read(soc, &frame_rd, sizeof(struct can_frame));
            if(recvbytes)
            {

              char stuff[8]; 
              sprintf(stuff, "%x", frame_rd.can_id);
              std::string temp;
              temp.append(stuff);
              can_message.id = temp;
              for(int x=0;x<8;x++){
                sprintf(stuff, "%x", frame_rd.data[x]);
                can_data_string.append(stuff);
              }
              can_message.data = can_data_string;
            }
        }
    }
    return can_message;
}


int close_port()
{
    close(soc);
    return 0;
}

int main(int argc, char **argv)
{
  fsae_electric_vehicle::can_message can_message;
  ros::init(argc, argv, "can_bus");
  ros::NodeHandle n;
  ros::Publisher CAN_BUS = n.advertise<fsae_electric_vehicle::can_message>("can_bus", 1000);
  ros::Subscriber CAN_BUS_COMMANDS = n.subscribe("can_bus_commands", 1000, send_port);
  ros::Rate loop_rate(1000);
  open_port("can0");
  while(ros::ok()){
    can_message = read_port(can_message);
    CAN_BUS.publish(can_message);
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}
