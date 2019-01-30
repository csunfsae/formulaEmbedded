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

class MultiArrayDimension {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
      this.size = null;
      this.stride = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label;
      }
      else {
        this.label = '';
      }

      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size;
      }
      else {
        this.size = 0;
      }

      if (initObj.hasOwnProperty('stride')) {
        this.stride = initObj.stride;
      }
      else {
        this.stride = 0;
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiArrayDimension
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);

    // Serialize message field [size]
    bufferOffset = _serializer.uint32(obj.size, buffer, bufferOffset);

    // Serialize message field [stride]
    bufferOffset = _serializer.uint32(obj.stride, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type MultiArrayDimension
    let data = new MultiArrayDimension(null);
    let len;
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);

    // Deserialize message field [size]
    data.size = _deserializer.uint32(buffer, bufferOffset);

    // Deserialize message field [stride]
    data.stride = _deserializer.uint32(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.label);
    // 12 is precalculated sum of the constant length fields
    return length + 12;
  }

  static datatype() {
    // Returns string type for a std_msgs/MultiArrayDimension object
    return 'std_msgs/MultiArrayDimension';
  }

  static md5sum() {
    // Returns md5sum of message object
    return '4cd0c83a8683deae40ecdac60e53bfa8'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiArrayDimension(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = '';
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0;
    }

    if (msg.stride !== undefined) {
      resolved.stride = msg.stride;
    }
    else {
      resolved.stride = 0;
    }

    return resolved;
  }
}

module.exports = MultiArrayDimension
