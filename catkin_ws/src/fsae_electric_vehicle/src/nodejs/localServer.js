#! /usr/bin/env node
'use strict';
const server = require('http').createServer()
const io = require('socket.io')(server)
const ioClient = require('socket.io-client')("https://api.matadormotorsports.racing");
const rosSubscribe = require('./rosSubscribe');
const rosPublish = require('./rosPublish');


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
  rosSubscribe(ioMessage);
  rosPublish(io);
  io.on('connection', function (client) {
    client.on('drivermsg', function (data) {
      ioMessage('drivermsg', { msg: data.msg })
    });
    client.on('eaToggle', function (data) {
      ioMessage('eaToggle', { toggle: True })
    });
    client.on('remoteLocation', function (data) {
      ioMessage('remoteLocation', { remote: data.location })
    });
  });
}
if(require.main === module){
  app();
}
