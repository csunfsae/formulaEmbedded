#!/usr/bin/env node
const rosnodejs = require('rosnodejs');
const std_msgs = rosnodejs.require('fsae_electric_vehicle').msg;
const io = require('socket.io-client')("https://api.matadormotorsports.racing");
const models = require("./models");
const rosSubscribe = require('./rosSubscribe');

class ioMessage{
    constructor(type, json) {
        json.time = new Date();
        this.json = json;
        this.type = type;
        this.log();
        this.emit();
    }
    log(){
        models.log.create({
            message_type: this.type,
            msg: this.json
        });
    }
    emit(){
        io.emit(this.type, this.json);
    }
};

function relay() {
  rosSubscribe(ioMessage);
}

if (require.main === module) {
  relay();
}
