function rosSubscribe(rosNode, std_msgs, ioMessage) {
    rosNode.subscribe('compass', std_msgs.compass,
        (data) => {
            new ioMessage("compass", { x: data.x, y: data.y, z: data.z, device: "MPU-9255" });
        }
    );
    rosNode.subscribe('accelerometer', std_msgs.accelerometer,
        (data) => {
            new ioMessage("accelerometer", { x: data.x, y: data.y, z: data.z, device: "MPU-9255" });
        }
    );
    rosNode.subscribe('gyroscope', std_msgs.gyroscope,
        (data) => {
            new ioMessage("gyroscope", { x: data.x, y: data.y, z: data.z, device: "MPU-9255" });
        }
    );
    rosNode.subscribe('temp_and_pressure', std_msgs.temp_and_pressure,
        (data) => {
            new ioMessage("temperature", { value: data.temp, device: "BMP280" });
            new ioMessage("pressure", { value: data.pressure, device: "BMP280" });
        }
    );
    rosNode.subscribe('GPS', std_msgs.gps, (data) => {
        new ioMessage("location", { lat: data.latitude, long: data.longitude, sats: data.sats, alt: data.alt });
    });
    rosNode.subscribe('steering_wheel', std_msgs.analog_sensor, (data) => {
        new ioMessage("steering_wheel",{data: data.value, time: data.time, device: "steering_wheel" });
    });
    rosNode.subscribe('accelerator', std_msgs.analog_sensor, (data) => {
        new ioMessage('accelerator', { value: data.value, time:data.time, device: 'accelerator' });
    });
    rosNode.subscribe('can_bus', std_msgs.can_message, (data) => {
        new ioMessage("can_bus", { id: data.id, data: data.data, value: data.value, time: data.time, device:"can_bus"});
    });
    rosNode.subscribe('vehicle_speed', std_msgs.vehicle_speed, (data) => {
        new ioMessage('speed', { value: data.value, device: 'arduino'});
    });
    rosNode.subscribe('suspension_offset', std_msgs.suspension_offset, (data) => {
        new ioMessage('suspension_offset', { 
            fl: data.front_left_value, 
            fr: data.front_right_value, 
            rl: data.back_left_value, 
            rr: data.back_right_value, 
            time: data.time_collected });
    });
    rosNode.subscribe('brake', std_msgs.analog_sensor , (data) => {
        new ioMessage('brake', { value: data.value, device: 'brake' });
    });
}
module.exports = rosSubscribe;
