function broadcast(io) {
    rosnodejs.initNode('internalSocket')
        .then((rosNode) => {
            let compass = rosNode.subscribe('compass', std_msgs.compass,
                (data) => {
                    io.broadcast.emit("compass", {x: data.x , y: data.y, z: data.z});
                }
            );
            let accelerometer = rosNode.subscribe('accelerometer', std_msgs.accelerometer,
                (data) => {
                    io.broadcast.emit("accelerometer", {x: data.x, y: data.y, z: data.z});
                }
            );
            let gyroscope = rosNode.subscribe('gyroscope', std_msgs.gyroscope,
                (data) => {
                    io.broadcast.emit("gyroscope", {x: data.x, y: data.y, z: data.z});
                }
            );
            let temp_and_pressure = rosNode.subscribe('temp_and_pressure', std_msgs.temp_and_pressure,
                (data) => {
                    io.broadcast.emit("temperature", {value: data.temp});
                    io.broadcast.emit("pressure", {value: data.pressure});
                }
            )

        });
}
module.exports = broadcast;
