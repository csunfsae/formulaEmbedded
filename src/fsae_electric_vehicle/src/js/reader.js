'use strict'

const rosnodejs = require('rosnodejs');

console.log(rosnodejs);

console.log(rosnodejs.require('fsae_electric_vehicle'))

const msgs = rosnodejs.require('fsae_electric_vehicle').msg

function listener() {
  rosnodejs.initNode('mynode').then((rosnode) => {
    let sub = rosnode.subscribe('/gps', msgs.gps, data => {
      rosnodejs.log.info('I heard: ' + data.latitude);
    });
  });
}

if (require.main === module) {
  listener();
}
