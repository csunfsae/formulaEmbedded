const rosnodejs = require('rosnodejs');
const std_msgs = rosnodejs.require('fsae_electric_vehicle').msg;

const io = require('socket.io-client')("https://api.matadormotorsports.racing");

function listener() {
  rosnodejs.initNode('ioClient')
    .then((rosNode) => {
      let compass = rosNode.subscribe('compass', std_msgs.compass,
        (data) => {
              let now = new Date();
              io.emit("compass", {time: now, x: data.x, y: data.y, z: data.z, device: "MPU-9255"});
        }
      );
      let accelerometer = rosNode.subscribe('accelerometer', std_msgs.accelerometer,
        (data) => { 
              let now = new Date();
              io.emit("accelerometer", {time: now, x: data.x, y: data.y, z: data.z, device: "MPU-9255"});
        }
      );
      let gyroscope = rosNode.subscribe('gyroscope', std_msgs.gyroscope,
        (data) => { 
              let now = new Date();
              io.emit("gyroscope", {time: now, x: data.x, y: data.y, z: data.z, device: "MPU-9255"});
        }
      );
      let temp_and_pressure = rosNode.subscribe('temp_and_pressure', std_msgs.temp_and_pressure,
        (data) => {
          let now = new Date();
          io.emit("temperature", {time: now, value: data.temp, device: "BMP280"});
          io.emit("pressure", {time: now, value: data.pressure, device: "BMP280"});
        }   
          
      )
      
    });
}

if (require.main === module) {
  listener();
}
