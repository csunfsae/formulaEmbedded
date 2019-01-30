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

class DemuxDeleteRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic;
      }
      else {
        this.topic = '';
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DemuxDeleteRequest
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type DemuxDeleteRequest
    let data = new DemuxDeleteRequest(null);
    let len;
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.topic);
    // 4 is precalculated sum of the constant length fields
    return length + 4;
  }

  static datatype() {
    // Returns string type for a topic_tools/DemuxDeleteRequest object
    return 'topic_tools/DemuxDeleteRequest';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'd8f94bae31b356b24d0427f80426d0c3'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string topic
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DemuxDeleteRequest(null);
    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = '';
    }

    return resolved;
  }
}

//-----------------------------------------------------------
class DemuxDeleteResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DemuxDeleteResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type DemuxDeleteResponse
    let data = new DemuxDeleteResponse(null);
    let len;
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a topic_tools/DemuxDeleteResponse object
    return 'topic_tools/DemuxDeleteResponse';
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
    const resolved = new DemuxDeleteResponse(null);
    return resolved;
  }
}

//-----------------------------------------------------------
module.exports = {
  Request: DemuxDeleteRequest,
  Response: DemuxDeleteResponse,
  md5sum() { return 'd8f94bae31b356b24d0427f80426d0c3'; },
  datatype() { return 'topic_tools/DemuxDelete'; }
};

