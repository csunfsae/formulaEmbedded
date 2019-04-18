function rosSubscribe(ioMessage, nodeName) {
    const rosnodejs = require('rosnodejs');
    const std_msgs = rosnodejs.require('fsae_electric_vehicle').msg;
    
    rosnodejs.initNode(nodeName)
        .then((rosNode) => {
            let compass = rosNode.subscribe('compass', std_msgs.compass,
                (data) => {
                    new ioMessage("compass", { x: data.x, y: data.y, z: data.z, device: "MPU-9255" });
                }
            );
            let accelerometer = rosNode.subscribe('accelerometer', std_msgs.accelerometer,
                (data) => {
                    new ioMessage("accelerometer", { x: data.x, y: data.y, z: data.z, device: "MPU-9255" });
                }
            );
            let gyroscope = rosNode.subscribe('gyroscope', std_msgs.gyroscope,
                (data) => {
                    new ioMessage("gyroscope", { x: data.x, y: data.y, z: data.z, device: "MPU-9255" });
                }
            );
            let temp_and_pressure = rosNode.subscribe('temp_and_pressure', std_msgs.temp_and_pressure,
                (data) => {
                    new ioMessage("temperature", { value: data.temp, device: "BMP280" });
                    new ioMessage("pressure", { value: data.pressure, device: "BMP280" });
                }
            );
            let gps = rosNode.subscribe('GPS', std_msgs.gps, (data) => {
                new ioMessage("location", { lat: data.latitude, long: data.longitude, sats: data.sats, alt: data.alt });
            });

            let steering_wheel = rosNode.subscribe('steering_wheel', std_msgs.analog_sensor, (data) => {
                console.log(data);
            });

            let accelerator = rosNode.subscribe('accelerator', std_msgs.analog_sensor, (data) => {
                console.log(data);
            });
            let can_data = rosNode.subscribe('can_bus', std_msgs.can_message, (data) => {
                new ioMessage("canbus", {id: data.id, data:data.data, device:"can_bus"});
            });
        });
}

module.exports = rosSubscribe;
