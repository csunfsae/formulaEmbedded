#!/usr/bin/env node

/************************************************************************
 Copyright (c) 2017, Rethink Robotics
 Copyright (c) 2017, Ian McMahon

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
************************************************************************/

'use strict';
/**
 * This example demonstrates simple receiving of messages over the ROS system.
 */

// Require rosnodejs itself
const rosnodejs = require('rosnodejs');
// Requires the std_msgs message package
const std_msgs = rosnodejs.require('std_msgs').msg;

function listener() {
  // Register node with ROS master
  rosnodejs.initNode('/chatter')
    .then((rosNode) => {
      // Create ROS subscriber on the 'chatter' topic expecting String messages
      let fs_sub = rosNode.subscribe('/filtered_signals', std_msgs.String,
        (data) => { // define callback execution
          rosnodejs.log.info('I heard: [' + data.data + ']');
        }
      );

      // Create ROS subscriber on the 'chatter' topic expecting String messages
        let mcu_sub = rosNode.subscribe('/mcu_settings', std_msgs.String,
          (data) => { // define callback execution
            rosnodejs.log.info('I heard: [' + data.data + ']');
          }
        );  

      // Create ROS subscriber on the 'chatter' topic expecting String messages
        let tc_sub = rosNode.subscribe('/traction_control', std_msgs.String,
          (data) => { // define callback execution
            rosnodejs.log.info('I heard: [' + data.data + ']');
          }
        );
    });
}

if (require.main === module) {
  // Invoke Main Listener Function
  listener();
}
