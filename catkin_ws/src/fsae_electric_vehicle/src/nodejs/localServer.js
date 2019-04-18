#! /usr/bin/env node
'use strict';
const express = require('express')();
const server = require('http').Server(express);
const io = require('socket.io')(server);
const ioClient = require('socket.io-client')("https://api.matadormotorsports.racing");

const rosSubscribe = require('./rosSubscribe');
const rosnodejs = require('rosnodejs');
const std_msgs = rosnodejs.require('fsae_electric_vehicle').msg;

express.get('/', (req, res) => {
    res.send("OK!");
});

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
           const pub = rosNode.advertise('can_bus_commands', std_msgs.can_message);
           const msg = new std_msgs.can_message();
           msg.id = '201';
           msg.data = data.action;
           pub.publish(msg);
         });
      });
    server.listen(3000, () => console.log('Example app listening on port 3000!'));
    });
}
if(require.main === module){
  app();
}
