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
const MultiArrayDimension = require('./MultiArrayDimension.js');

//-----------------------------------------------------------

class MultiArrayLayout {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dim = null;
      this.data_offset = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('dim')) {
        this.dim = initObj.dim;
      }
      else {
        this.dim = [];
      }

      if (initObj.hasOwnProperty('data_offset')) {
        this.data_offset = initObj.data_offset;
      }
      else {
        this.data_offset = 0;
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiArrayLayout

    // Serialize message field [dim]
    // Serialize the length for message field [dim]
    bufferOffset = _serializer.uint32(obj.dim.length, buffer, bufferOffset);
    obj.dim.forEach((val) => {
      bufferOffset = MultiArrayDimension.serialize(val, buffer, bufferOffset);
    });

    // Serialize message field [data_offset]
    bufferOffset = _serializer.uint32(obj.data_offset, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type MultiArrayLayout
    let data = new MultiArrayLayout(null);
    let len;
    // Deserialize message field [dim]
    // Deserialize array length for message field [dim]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.dim = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.dim[i] = MultiArrayDimension.deserialize(buffer, bufferOffset);
    }

    // Deserialize message field [data_offset]
    data.data_offset = _deserializer.uint32(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    for(let i = 0; i < object.dim.length; ++i) {
      length += MultiArrayDimension.getMessageSize(object.dim[i]);
    }
    // 8 is precalculated sum of the constant length fields
    return length + 8;
  }

  static datatype() {
    // Returns string type for a std_msgs/MultiArrayLayout object
    return 'std_msgs/MultiArrayLayout';
  }

  static md5sum() {
    // Returns md5sum of message object
    return '0fed2a11c13e11c5571b4e2a995a91a3'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = "height"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = "width"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = "channel"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
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
    const resolved = new MultiArrayLayout(null);
    if (msg.dim !== undefined) {
      resolved.dim = new Array(msg.dim.length);
      for (let i = 0; i < resolved.dim.length; ++i) {
        resolved.dim[i] = MultiArrayDimension.Resolve(msg.dim[i]);
      }
    }
    else {
      resolved.dim = [];
    }

    if (msg.data_offset !== undefined) {
      resolved.data_offset = msg.data_offset;
    }
    else {
      resolved.data_offset = 0;
    }

    return resolved;
  }
}

module.exports = MultiArrayLayout
