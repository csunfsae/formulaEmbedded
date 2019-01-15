//-----------------------------------------------------------
// Auto-generated from package nodelet.
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

class NodeletListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeletListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type NodeletListRequest
    let data = new NodeletListRequest(null);
    let len;
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a nodelet/NodeletListRequest object
    return 'nodelet/NodeletListRequest';
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
    const resolved = new NodeletListRequest(null);
    return resolved;
  }
}

//-----------------------------------------------------------
class NodeletListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nodelets = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('nodelets')) {
        this.nodelets = initObj.nodelets;
      }
      else {
        this.nodelets = [];
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeletListResponse

    // Serialize message field [nodelets]
    bufferOffset = _arraySerializer.string(obj.nodelets, buffer, bufferOffset, null);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type NodeletListResponse
    let data = new NodeletListResponse(null);
    let len;
    // Deserialize message field [nodelets]
    data.nodelets = _arrayDeserializer.string(buffer, bufferOffset, null);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    for(let i = 0; i < object.nodelets.length; ++i) {
      length += 4 + _getByteLength(object.nodelets[i]);
    }
    // 4 is precalculated sum of the constant length fields
    return length + 4;
  }

  static datatype() {
    // Returns string type for a nodelet/NodeletListResponse object
    return 'nodelet/NodeletListResponse';
  }

  static md5sum() {
    // Returns md5sum of message object
    return '99c7b10e794f5600b8030e697e946ca7'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] nodelets
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeletListResponse(null);
    if (msg.nodelets !== undefined) {
      resolved.nodelets = msg.nodelets;
    }
    else {
      resolved.nodelets = [];
    }

    return resolved;
  }
}

//-----------------------------------------------------------
module.exports = {
  Request: NodeletListRequest,
  Response: NodeletListResponse,
  md5sum() { return '99c7b10e794f5600b8030e697e946ca7'; },
  datatype() { return 'nodelet/NodeletList'; }
};

