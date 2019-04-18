function rosSubscribe(rosNode, ioMessage) {
    const std_msgs = rosnodejs.require('fsae_electric_vehicle').msg;
    io.on('connection', function (client) {
        client.on('accelerate', function (data) {
            const pub = nh.advertise('can_bus', std_msgs.can_message);
            const msg = new std_msgs.can_message();
            msg.id = '201';
            msg.data = `31${data.value}`;
            setInterval(() => {
                pub.publish(msg);
            }, 1000);
        });
    });
}

module.exports = rosSubscribe;
