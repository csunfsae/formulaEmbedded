//-----------------------------------------------------------
// Auto-generated from package topic_tools.
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


//-----------------------------------------------------------

class DemuxListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DemuxListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type DemuxListRequest
    let data = new DemuxListRequest(null);
    let len;
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a topic_tools/DemuxListRequest object
    return 'topic_tools/DemuxListRequest';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'd41d8cd98f00b204e9800998ecf8427e'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DemuxListRequest(null);
    return resolved;
  }
}

//-----------------------------------------------------------
class DemuxListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topics = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('topics')) {
        this.topics = initObj.topics;
      }
      else {
        this.topics = [];
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DemuxListResponse

    // Serialize message field [topics]
    bufferOffset = _arraySerializer.string(obj.topics, buffer, bufferOffset, null);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type DemuxListResponse
    let data = new DemuxListResponse(null);
    let len;
    // Deserialize message field [topics]
    data.topics = _arrayDeserializer.string(buffer, bufferOffset, null);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    for(let i = 0; i < object.topics.length; ++i) {
      length += 4 + _getByteLength(object.topics[i]);
    }
    // 4 is precalculated sum of the constant length fields
    return length + 4;
  }

  static datatype() {
    // Returns string type for a topic_tools/DemuxListResponse object
    return 'topic_tools/DemuxListResponse';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'b0eef9a05d4e829092fc2f2c3c2aad3d'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] topics
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DemuxListResponse(null);
    if (msg.topics !== undefined) {
      resolved.topics = msg.topics;
    }
    else {
      resolved.topics = [];
    }

    return resolved;
  }
}

//-----------------------------------------------------------
module.exports = {
  Request: DemuxListRequest,
  Response: DemuxListResponse,
  md5sum() { return 'b0eef9a05d4e829092fc2f2c3c2aad3d'; },
  datatype() { return 'topic_tools/DemuxList'; }
};

