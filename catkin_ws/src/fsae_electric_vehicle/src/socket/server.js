const rosnodejs = require('rosnodejs');
const server = require('http').createServer()
const io = require('socket.io')(server)
const broadcast = require('./broadcast')(io);

function talker() {
  //Register node with ROS master
  rosnodejs.initNode('/talker_node')
  .then((rosNode) => {
    require('./endpoint')(io, rosNode);
    server.listen(3000, function (err) {
      if (err) throw err
      console.log('listening on port 3000');
    });
    //Define a function to execute every 100ms
  });
}