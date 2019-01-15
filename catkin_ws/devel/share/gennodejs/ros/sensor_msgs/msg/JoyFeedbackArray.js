//-----------------------------------------------------------
// Auto-generated from package sensor_msgs.
// !! Do not edit !!
//-----------------------------------------------------------

"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength
const JoyFeedback = require('./JoyFeedback.js');

//-----------------------------------------------------------

class JoyFeedbackArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.array = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('array')) {
        this.array = initObj.array;
      }
      else {
        this.array = [];
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JoyFeedbackArray

    // Serialize message field [array]
    // Serialize the length for message field [array]
    bufferOffset = _serializer.uint32(obj.array.length, buffer, bufferOffset);
    obj.array.forEach((val) => {
      bufferOffset = JoyFeedback.serialize(val, buffer, bufferOffset);
    });

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type JoyFeedbackArray
    let data = new JoyFeedbackArray(null);
    let len;
    // Deserialize message field [array]
    // Deserialize array length for message field [array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.array[i] = JoyFeedback.deserialize(buffer, bufferOffset);
    }

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 6 * object.array.length
    // 4 is precalculated sum of the constant length fields
    return length + 4;
  }

  static datatype() {
    // Returns string type for a sensor_msgs/JoyFeedbackArray object
    return 'sensor_msgs/JoyFeedbackArray';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'cde5730a895b1fc4dee6f91b754b213d'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message publishes values for multiple feedback at once. 
JoyFeedback[] array

================================================================================
MSG: sensor_msgs/JoyFeedback
# Declare of the type of feedback
uint8 TYPE_LED    = 0
uint8 TYPE_RUMBLE = 1
uint8 TYPE_BUZZER = 2

uint8 type

# This will hold an id number for each type of each feedback.
# Example, the first led would be id=0, the second would be id=1
uint8 id

# Intensity of the feedback, from 0.0 to 1.0, inclusive.  If device is
# actually binary, driver should treat 0<=x<0.5 as off, 0.5<=x<=1 as on.
float32 intensity
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JoyFeedbackArray(null);
    if (msg.array !== undefined) {
      resolved.array = new Array(msg.array.length);
      for (let i = 0; i < resolved.array.length; ++i) {
        resolved.array[i] = JoyFeedback.Resolve(msg.array[i]);
      }
    }
    else {
      resolved.array = [];
    }

    return resolved;
  }
}

module.exports = JoyFeedbackArray
