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
  rosnodejs.initNode('/listener_node')
    .then((rosNode) => {
      let sub = rosNode.subscribe('sinWave', std_msgs.wheel_velocity,
        (data) => { // define callback execution
            let now = new Date();
            console.log(data.front_left_time);
            io.emit("offsets", {time: now, value: parseInt(data.front_left_time), device: "Potentiometer"});
        }
      );
    });
}

if (require.main === module) {
  listener();
}
