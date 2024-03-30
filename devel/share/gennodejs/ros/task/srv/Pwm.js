// Auto-generated. Do not edit!

// (in-package task.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PwmRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set_duty = null;
    }
    else {
      if (initObj.hasOwnProperty('set_duty')) {
        this.set_duty = initObj.set_duty
      }
      else {
        this.set_duty = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PwmRequest
    // Serialize message field [set_duty]
    bufferOffset = _serializer.float32(obj.set_duty, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PwmRequest
    let len;
    let data = new PwmRequest(null);
    // Deserialize message field [set_duty]
    data.set_duty = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'task/PwmRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a68827450fc12cf24871d1ae3051699';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 set_duty
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PwmRequest(null);
    if (msg.set_duty !== undefined) {
      resolved.set_duty = msg.set_duty;
    }
    else {
      resolved.set_duty = 0.0
    }

    return resolved;
    }
};

class PwmResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.now_duty = null;
    }
    else {
      if (initObj.hasOwnProperty('now_duty')) {
        this.now_duty = initObj.now_duty
      }
      else {
        this.now_duty = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PwmResponse
    // Serialize message field [now_duty]
    bufferOffset = _serializer.float32(obj.now_duty, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PwmResponse
    let len;
    let data = new PwmResponse(null);
    // Deserialize message field [now_duty]
    data.now_duty = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'task/PwmResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ff49f11ebd4122f9f5382535bfb1800';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 now_duty
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PwmResponse(null);
    if (msg.now_duty !== undefined) {
      resolved.now_duty = msg.now_duty;
    }
    else {
      resolved.now_duty = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: PwmRequest,
  Response: PwmResponse,
  md5sum() { return '2cf059adcc761a1dfe88251e9a131afb'; },
  datatype() { return 'task/Pwm'; }
};
