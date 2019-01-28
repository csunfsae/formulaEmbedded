#!/usr/bin/env node
/*
 * CSUN FSAE EV 2018
 * ROS NODE: DATA OUT
 * Topics Subscribed: Filtered Signals
 * Topics Publishing: None
 * Tag: RN2
 * Summary:
 *  This node is meant to take the filtered data from the data aqcuisition pci card and send it
 *  to the server for remote viewing i.e. visualization. Socketio is the main lib used here.
 *  The main function of this node is to subscribe to all data from the daq card and send it
 *  out.
 *
 * Related:
 *   Documentation:
 *     - COMP-490-FSAE/Embedded/JetsonRos.html (draw.io)
*/
'use strict';
const rosnodejs = require('rosnodejs');
var io = require('socket.io-client')("https://api.matadormotorsports.racing");
const std_msgs = rosnodejs.require('fsae_electric_vehicle').msg;
function listener() {
  console.log("test");
  rosnodejs.initNode('WEB_TRANSMIT')
    .then((rosNode) => {
      let compass = rosNode.subscribe('compass', std_msgs.compass,
        (data) => { // define callback execution
              let now = new Date();
              io.emit("compass", {time: now, x: data.x, y: data.y, z: data.z, device: "MPU-9255"});
        }
      );
      let accelerometer = rosNode.subscribe('accelerometer', std_msgs.accelerometer,
        (data) => { // define callback execution
              let now = new Date();
              io.emit("accelerometer", {time: now, x: data.x, y: data.y, z: data.z, device: "MPU-9255"});
        }
      );
      let gyroscope = rosNode.subscribe('gyroscope', std_msgs.gyroscope,
        (data) => { // define callback execution
              let now = new Date();
              io.emit("gyroscope", {time: now, x: data.x, y: data.y, z: data.z, device: "MPU-9255"});
        }
      );
      let temp_and_pressure = rosNode.subscribe('temp_and_pressure', std_msgs.temp_and_pressure,
        (data) => {
          let now = new Date();
          io.emit("temperature", {time: now, value: data.temp, device: "BMP280"});
          io.emit("pressure", {time: now, value: data.pressure, device: "BMP280"});
        }   
          
      )
      
    });
}

if (require.main === module) {
  listener();
}
