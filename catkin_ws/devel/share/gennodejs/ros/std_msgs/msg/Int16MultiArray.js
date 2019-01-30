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
const MultiArrayLayout = require('./MultiArrayLayout.js');

//-----------------------------------------------------------

class Int16MultiArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.layout = null;
      this.data = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('layout')) {
        this.layout = initObj.layout;
      }
      else {
        this.layout = new MultiArrayLayout();
      }

      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data;
      }
      else {
        this.data = [];
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Int16MultiArray
    // Serialize message field [layout]
    bufferOffset = MultiArrayLayout.serialize(obj.layout, buffer, bufferOffset);


    // Serialize message field [data]
    bufferOffset = _arraySerializer.int16(obj.data, buffer, bufferOffset, null);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type Int16MultiArray
    let data = new Int16MultiArray(null);
    let len;
    // Deserialize message field [layout]
    data.layout = MultiArrayLayout.deserialize(buffer, bufferOffset);

    // Deserialize message field [data]
    data.data = _arrayDeserializer.int16(buffer, bufferOffset, null);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MultiArrayLayout.getMessageSize(object.layout)
    length += 2 * object.data.length
    // 4 is precalculated sum of the constant length fields
    return length + 4;
  }

  static datatype() {
    // Returns string type for a std_msgs/Int16MultiArray object
    return 'std_msgs/Int16MultiArray';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'd9338d7f523fcb692fae9d0a0e9f067c'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
int16[]           data          # array of data

================================================================================
MSG: std_msgs/MultiArrayLayout
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
    const resolved = new Int16MultiArray(null);
    if (msg.layout !== undefined) {
      resolved.layout = MultiArrayLayout.Resolve(msg.layout);
    }
    else {
      resolved.layout = new MultiArrayLayout();
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = [];
    }

    return resolved;
  }
}

module.exports = Int16MultiArray
