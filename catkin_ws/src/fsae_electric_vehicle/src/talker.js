#!/usr/bin/env node
/*
 * CSUN FSAE EV 2018
 * ROS NODE: DATA IN
 * Topics Subscribed: None
 * Topics Publishing: Traction Control Settings && MCU Settings
 * Tag: RN3
 * Summary:
 *  This node is mean to recieve input from the grafana dashboard. Things like interacting with the system remotely 
 *  and transimitting messages should be collected here from a websocket.
 *   
 * Related:
 *   Documentation:
 *     - COMP-490-FSAE/Embedded/JetsonRos.html (draw.io)
*/

'use strict';
/**
 * This example demonstrates simple sending of messages over the ROS system.
 */

// Require rosnodejs itself
const rosnodejs = require('rosnodejs');
// Requires the std_msgs message package
const std_msgs = rosnodejs.require('std_msgs').msg;
const server = require('http').createServer()
const io = require('socket.io')(server)
function talker() {
  //Register node with ROS master
  rosnodejs.initNode('/talker_node')
    .then((rosNode) => {
      //Create ROS publisher on the 'chatter' topic with String message
      let pub = rosNode.advertise('/chatter', std_msgs.String);
      const msg = new std_msgs.String();
      server.listen(3000, function (err) {
        if (err) throw err
          console.log('listening on port 3000');
        //msg.data = 'hello world ' + count;
        //Publish over ROS
        //pub.publish(msg);
        //Log through stdout and /rosout
        //rosnodejs.log.info('I said: [' + msg.data + ']');
        //++count;
      });
      //Define a function to execute every 100ms
    });
}

io.on('connection', function (client) {
  client.on('message', function(message){
    console.log(message);
    console.log("test");
  });

  client.on('disconnect', function () {
    console.log('client disconnect...', client.id)
    handleDisconnect()
  });

  client.on('error', function (err) {
    console.log('received error from client:', client.id)
    console.log(err)
  });
})

if (require.main === module) {
  // Invoke Main Talker Function
  talker();
}

