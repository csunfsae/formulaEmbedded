#! /usr/bin/env node


function endpoint(io, rosNode) {
    const std_msgs = rosnodejs.require('std_msgs').msg;
    io.on('connection', function (client) {
        client.on('message', function (message) {
            console.log(message);
            let message = rosNode.advertise('/message', std_msgs.String);
            console.log("test");
        });
        client.on('disconnect', function () {
            let disconnect = rosNode.advertise('/message', std_msgs.String);
            console.log('client disconnect...', client.id);
            handleDisconnect();
        });
        client.on('error', function (err) {
            let error = rosNode.advertise('/message', std_msgs.String);
            console.log('received error from client:', client.id);
            console.log(err);
        });
        client.on('drivermsg', function (data) {
            let drivermsg = rosNode.advertise('/driver_msg', std_msgs.String);
            msg.data = 'hello world ';
            drivermsg.publish(msg);
        });
    });
}
module.exports = endpoint;
