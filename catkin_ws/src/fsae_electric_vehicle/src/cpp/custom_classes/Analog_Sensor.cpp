#include <stdio.h>
#include <iostream>
#include <sstream>
#include <string>
#include <sys/ioctl.h>
#include <linux/i2c.h>
#include <linux/i2c-dev.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <algorithm>
#include "../../../include/Analog_Sensor.hpp"


  Analog_Sensor::Analog_Sensor(){

  }  
  
  void Analog_Sensor::set_data(int value){
    this->data = value; 
  }

  int Analog_Sensor::get_data(){
    return this->data;
  }

  

