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
#include <cstdio>
#include <inttypes.h>

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

int send_port(struct can_frame *frame)
{
    int retval;
   retval = write(soc, frame, sizeof(struct can_frame));
    if (retval != sizeof(struct can_frame))
    {
        return (-1);
    }
    else
    {
        return (0);
    }
}

void read_port()
{
    struct can_frame frame_rd;
    int recvbytes = 0;

    read_can_port = 1;
    while(read_can_port)
    {
        struct timeval timeout = {1, 0};
        fd_set readSet;
        FD_ZERO(&readSet);
        FD_SET(soc, &readSet);

        if (select((soc + 1), &readSet, NULL, NULL, &timeout) >= 0)
        {
            if (!read_can_port)
            {
                break;
            }
            if (FD_ISSET(soc, &readSet))
            {
                recvbytes = read(soc, &frame_rd, sizeof(struct can_frame));
                if(recvbytes)
                {
                  //printf("dlc = %d, data=%d\n", frame_rd.can_dlc,frame_rd.data);
                  printf("Can ID = %x ", frame_rd.can_id);
                  printf("dlc = %d ", frame_rd.can_dlc);
                  printf("data= ");
                  for(int data=0;data<frame_rd.can_dlc;data++){
                    printf("%x ", frame_rd.data[data]);
                  }
                  printf("\n");
                }
            }
        }

    }

}

int close_port()
{
    close(soc);
    return 0;
}

int main(void)
{
  open_port("can0");
  read_port();
  return 0;
}
