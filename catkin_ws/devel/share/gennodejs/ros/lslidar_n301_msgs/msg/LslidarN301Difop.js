// Auto-generated. Do not edit!

// (in-package lslidar_n301_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LslidarN301Difop {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.temperature = null;
      this.rpm = null;
    }
    else {
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0;
      }
      if (initObj.hasOwnProperty('rpm')) {
        this.rpm = initObj.rpm
      }
      else {
        this.rpm = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LslidarN301Difop
    // Serialize message field [temperature]
    bufferOffset = _serializer.int64(obj.temperature, buffer, bufferOffset);
    // Serialize message field [rpm]
    bufferOffset = _serializer.int64(obj.rpm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LslidarN301Difop
    let len;
    let data = new LslidarN301Difop(null);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rpm]
    data.rpm = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lslidar_n301_msgs/LslidarN301Difop';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9ba6a08f315575f30cfd23b074c07a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 temperature
    int64 rpm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LslidarN301Difop(null);
    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0
    }

    if (msg.rpm !== undefined) {
      resolved.rpm = msg.rpm;
    }
    else {
      resolved.rpm = 0
    }

    return resolved;
    }
};

module.exports = LslidarN301Difop;
