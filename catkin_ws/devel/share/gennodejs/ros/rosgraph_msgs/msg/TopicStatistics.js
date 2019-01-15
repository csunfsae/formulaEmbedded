//-----------------------------------------------------------
// Auto-generated from package rosgraph_msgs.
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

class TopicStatistics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic = null;
      this.node_pub = null;
      this.node_sub = null;
      this.window_start = null;
      this.window_stop = null;
      this.delivered_msgs = null;
      this.dropped_msgs = null;
      this.traffic = null;
      this.period_mean = null;
      this.period_stddev = null;
      this.period_max = null;
      this.stamp_age_mean = null;
      this.stamp_age_stddev = null;
      this.stamp_age_max = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic;
      }
      else {
        this.topic = '';
      }

      if (initObj.hasOwnProperty('node_pub')) {
        this.node_pub = initObj.node_pub;
      }
      else {
        this.node_pub = '';
      }

      if (initObj.hasOwnProperty('node_sub')) {
        this.node_sub = initObj.node_sub;
      }
      else {
        this.node_sub = '';
      }

      if (initObj.hasOwnProperty('window_start')) {
        this.window_start = initObj.window_start;
      }
      else {
        this.window_start = {secs: 0, nsecs: 0};
      }

      if (initObj.hasOwnProperty('window_stop')) {
        this.window_stop = initObj.window_stop;
      }
      else {
        this.window_stop = {secs: 0, nsecs: 0};
      }

      if (initObj.hasOwnProperty('delivered_msgs')) {
        this.delivered_msgs = initObj.delivered_msgs;
      }
      else {
        this.delivered_msgs = 0;
      }

      if (initObj.hasOwnProperty('dropped_msgs')) {
        this.dropped_msgs = initObj.dropped_msgs;
      }
      else {
        this.dropped_msgs = 0;
      }

      if (initObj.hasOwnProperty('traffic')) {
        this.traffic = initObj.traffic;
      }
      else {
        this.traffic = 0;
      }

      if (initObj.hasOwnProperty('period_mean')) {
        this.period_mean = initObj.period_mean;
      }
      else {
        this.period_mean = {secs: 0, nsecs: 0};
      }

      if (initObj.hasOwnProperty('period_stddev')) {
        this.period_stddev = initObj.period_stddev;
      }
      else {
        this.period_stddev = {secs: 0, nsecs: 0};
      }

      if (initObj.hasOwnProperty('period_max')) {
        this.period_max = initObj.period_max;
      }
      else {
        this.period_max = {secs: 0, nsecs: 0};
      }

      if (initObj.hasOwnProperty('stamp_age_mean')) {
        this.stamp_age_mean = initObj.stamp_age_mean;
      }
      else {
        this.stamp_age_mean = {secs: 0, nsecs: 0};
      }

      if (initObj.hasOwnProperty('stamp_age_stddev')) {
        this.stamp_age_stddev = initObj.stamp_age_stddev;
      }
      else {
        this.stamp_age_stddev = {secs: 0, nsecs: 0};
      }

      if (initObj.hasOwnProperty('stamp_age_max')) {
        this.stamp_age_max = initObj.stamp_age_max;
      }
      else {
        this.stamp_age_max = {secs: 0, nsecs: 0};
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TopicStatistics
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);

    // Serialize message field [node_pub]
    bufferOffset = _serializer.string(obj.node_pub, buffer, bufferOffset);

    // Serialize message field [node_sub]
    bufferOffset = _serializer.string(obj.node_sub, buffer, bufferOffset);

    // Serialize message field [window_start]
    bufferOffset = _serializer.time(obj.window_start, buffer, bufferOffset);

    // Serialize message field [window_stop]
    bufferOffset = _serializer.time(obj.window_stop, buffer, bufferOffset);

    // Serialize message field [delivered_msgs]
    bufferOffset = _serializer.int32(obj.delivered_msgs, buffer, bufferOffset);

    // Serialize message field [dropped_msgs]
    bufferOffset = _serializer.int32(obj.dropped_msgs, buffer, bufferOffset);

    // Serialize message field [traffic]
    bufferOffset = _serializer.int32(obj.traffic, buffer, bufferOffset);

    // Serialize message field [period_mean]
    bufferOffset = _serializer.duration(obj.period_mean, buffer, bufferOffset);

    // Serialize message field [period_stddev]
    bufferOffset = _serializer.duration(obj.period_stddev, buffer, bufferOffset);

    // Serialize message field [period_max]
    bufferOffset = _serializer.duration(obj.period_max, buffer, bufferOffset);

    // Serialize message field [stamp_age_mean]
    bufferOffset = _serializer.duration(obj.stamp_age_mean, buffer, bufferOffset);

    // Serialize message field [stamp_age_stddev]
    bufferOffset = _serializer.duration(obj.stamp_age_stddev, buffer, bufferOffset);

    // Serialize message field [stamp_age_max]
    bufferOffset = _serializer.duration(obj.stamp_age_max, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type TopicStatistics
    let data = new TopicStatistics(null);
    let len;
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);

    // Deserialize message field [node_pub]
    data.node_pub = _deserializer.string(buffer, bufferOffset);

    // Deserialize message field [node_sub]
    data.node_sub = _deserializer.string(buffer, bufferOffset);

    // Deserialize message field [window_start]
    data.window_start = _deserializer.time(buffer, bufferOffset);

    // Deserialize message field [window_stop]
    data.window_stop = _deserializer.time(buffer, bufferOffset);

    // Deserialize message field [delivered_msgs]
    data.delivered_msgs = _deserializer.int32(buffer, bufferOffset);

    // Deserialize message field [dropped_msgs]
    data.dropped_msgs = _deserializer.int32(buffer, bufferOffset);

    // Deserialize message field [traffic]
    data.traffic = _deserializer.int32(buffer, bufferOffset);

    // Deserialize message field [period_mean]
    data.period_mean = _deserializer.duration(buffer, bufferOffset);

    // Deserialize message field [period_stddev]
    data.period_stddev = _deserializer.duration(buffer, bufferOffset);

    // Deserialize message field [period_max]
    data.period_max = _deserializer.duration(buffer, bufferOffset);

    // Deserialize message field [stamp_age_mean]
    data.stamp_age_mean = _deserializer.duration(buffer, bufferOffset);

    // Deserialize message field [stamp_age_stddev]
    data.stamp_age_stddev = _deserializer.duration(buffer, bufferOffset);

    // Deserialize message field [stamp_age_max]
    data.stamp_age_max = _deserializer.duration(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.topic);
    length += _getByteLength(object.node_pub);
    length += _getByteLength(object.node_sub);
    // 88 is precalculated sum of the constant length fields
    return length + 88;
  }

  static datatype() {
    // Returns string type for a rosgraph_msgs/TopicStatistics object
    return 'rosgraph_msgs/TopicStatistics';
  }

  static md5sum() {
    // Returns md5sum of message object
    return '10152ed868c5097a5e2e4a89d7daa710'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # name of the topic
string topic

# node id of the publisher
string node_pub

# node id of the subscriber
string node_sub

# the statistics apply to this time window
time window_start
time window_stop

# number of messages delivered during the window
int32 delivered_msgs
# numbers of messages dropped during the window
int32 dropped_msgs

# traffic during the window, in bytes
int32 traffic

# mean/stddev/max period between two messages
duration period_mean
duration period_stddev
duration period_max

# mean/stddev/max age of the message based on the
# timestamp in the message header. In case the
# message does not have a header, it will be 0.
duration stamp_age_mean
duration stamp_age_stddev
duration stamp_age_max
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TopicStatistics(null);
    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = '';
    }

    if (msg.node_pub !== undefined) {
      resolved.node_pub = msg.node_pub;
    }
    else {
      resolved.node_pub = '';
    }

    if (msg.node_sub !== undefined) {
      resolved.node_sub = msg.node_sub;
    }
    else {
      resolved.node_sub = '';
    }

    if (msg.window_start !== undefined) {
      resolved.window_start = msg.window_start;
    }
    else {
      resolved.window_start = {secs: 0, nsecs: 0};
    }

    if (msg.window_stop !== undefined) {
      resolved.window_stop = msg.window_stop;
    }
    else {
      resolved.window_stop = {secs: 0, nsecs: 0};
    }

    if (msg.delivered_msgs !== undefined) {
      resolved.delivered_msgs = msg.delivered_msgs;
    }
    else {
      resolved.delivered_msgs = 0;
    }

    if (msg.dropped_msgs !== undefined) {
      resolved.dropped_msgs = msg.dropped_msgs;
    }
    else {
      resolved.dropped_msgs = 0;
    }

    if (msg.traffic !== undefined) {
      resolved.traffic = msg.traffic;
    }
    else {
      resolved.traffic = 0;
    }

    if (msg.period_mean !== undefined) {
      resolved.period_mean = msg.period_mean;
    }
    else {
      resolved.period_mean = {secs: 0, nsecs: 0};
    }

    if (msg.period_stddev !== undefined) {
      resolved.period_stddev = msg.period_stddev;
    }
    else {
      resolved.period_stddev = {secs: 0, nsecs: 0};
    }

    if (msg.period_max !== undefined) {
      resolved.period_max = msg.period_max;
    }
    else {
      resolved.period_max = {secs: 0, nsecs: 0};
    }

    if (msg.stamp_age_mean !== undefined) {
      resolved.stamp_age_mean = msg.stamp_age_mean;
    }
    else {
      resolved.stamp_age_mean = {secs: 0, nsecs: 0};
    }

    if (msg.stamp_age_stddev !== undefined) {
      resolved.stamp_age_stddev = msg.stamp_age_stddev;
    }
    else {
      resolved.stamp_age_stddev = {secs: 0, nsecs: 0};
    }

    if (msg.stamp_age_max !== undefined) {
      resolved.stamp_age_max = msg.stamp_age_max;
    }
    else {
      resolved.stamp_age_max = {secs: 0, nsecs: 0};
    }

    return resolved;
  }
}

module.exports = TopicStatistics
