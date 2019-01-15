//-----------------------------------------------------------
// Auto-generated from package std_msgs.
// !! Do not edit !!
//-----------------------------------------------------------

"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength

//-----------------------------------------------------------

class ColorRGBA {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.r = null;
      this.g = null;
      this.b = null;
      this.a = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r;
      }
      else {
        this.r = 0.0;
      }

      if (initObj.hasOwnProperty('g')) {
        this.g = initObj.g;
      }
      else {
        this.g = 0.0;
      }

      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b;
      }
      else {
        this.b = 0.0;
      }

      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a;
      }
      else {
        this.a = 0.0;
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ColorRGBA
    // Serialize message field [r]
    bufferOffset = _serializer.float32(obj.r, buffer, bufferOffset);

    // Serialize message field [g]
    bufferOffset = _serializer.float32(obj.g, buffer, bufferOffset);

    // Serialize message field [b]
    bufferOffset = _serializer.float32(obj.b, buffer, bufferOffset);

    // Serialize message field [a]
    bufferOffset = _serializer.float32(obj.a, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type ColorRGBA
    let data = new ColorRGBA(null);
    let len;
    // Deserialize message field [r]
    data.r = _deserializer.float32(buffer, bufferOffset);

    // Deserialize message field [g]
    data.g = _deserializer.float32(buffer, bufferOffset);

    // Deserialize message field [b]
    data.b = _deserializer.float32(buffer, bufferOffset);

    // Deserialize message field [a]
    data.a = _deserializer.float32(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a std_msgs/ColorRGBA object
    return 'std_msgs/ColorRGBA';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'a29a96539573343b1310c73607334b00'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 r
float32 g
float32 b
float32 a
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ColorRGBA(null);
    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0.0;
    }

    if (msg.g !== undefined) {
      resolved.g = msg.g;
    }
    else {
      resolved.g = 0.0;
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0.0;
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0;
    }

    return resolved;
  }
}

module.exports = ColorRGBA
