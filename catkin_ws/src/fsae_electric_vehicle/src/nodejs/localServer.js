#! /usr/bin/env node
'use strict';
const server = require('http').createServer()
const io = require('socket.io')(server)
const ioClient = require('socket.io-client')("https://api.matadormotorsports.racing");
const rosSubscribe = require('./rosSubscribe');

const rosnodejs = require('rosnodejs');
const std_msgs = rosnodejs.require('fsae_electric_vehicle').msg;


class ioMessage {
  constructor(type, json) {
    this.json = json;
    this.type = type;
    this.emit();
  }
  emit() {
    ioClient.emit(this.type, this.json);
  }
};

function app() {
  rosnodejs.initNode('localServer')
    .then((rosNode) => {
      rosSubscribe(rosNode, ioMessage);
      io.on('connection', function (client) {
        client.on('accelerate', function (data) {
          const pub = rosNode.advertise('can_bus', std_msgs.can_message);
          const msg = new std_msgs.can_message();
          msg.id = '201';
          msg.data = `31${data.value}`;
          setInterval(() => {
            pub.publish(msg);
          }, 1000);
        });
      });
    });
}
if(require.main === module){
  app();
}
