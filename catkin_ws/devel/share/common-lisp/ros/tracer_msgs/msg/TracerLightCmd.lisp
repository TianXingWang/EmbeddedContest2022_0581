; Auto-generated. Do not edit!


(cl:in-package tracer_msgs-msg)


;//! \htmlinclude TracerLightCmd.msg.html

(cl:defclass <TracerLightCmd> (roslisp-msg-protocol:ros-message)
  ((enable_cmd_light_control
    :reader enable_cmd_light_control
    :initarg :enable_cmd_light_control
    :type cl:boolean
    :initform cl:nil)
   (front_mode
    :reader front_mode
    :initarg :front_mode
    :type cl:fixnum
    :initform 0)
   (front_custom_value
    :reader front_custom_value
    :initarg :front_custom_value
    :type cl:fixnum
    :initform 0)
   (rear_mode
    :reader rear_mode
    :initarg :rear_mode
    :type cl:fixnum
    :initform 0)
   (rear_custom_value
    :reader rear_custom_value
    :initarg :rear_custom_value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TracerLightCmd (<TracerLightCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TracerLightCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TracerLightCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tracer_msgs-msg:<TracerLightCmd> is deprecated: use tracer_msgs-msg:TracerLightCmd instead.")))

(cl:ensure-generic-function 'enable_cmd_light_control-val :lambda-list '(m))
(cl:defmethod enable_cmd_light_control-val ((m <TracerLightCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracer_msgs-msg:enable_cmd_light_control-val is deprecated.  Use tracer_msgs-msg:enable_cmd_light_control instead.")
  (enable_cmd_light_control m))

(cl:ensure-generic-function 'front_mode-val :lambda-list '(m))
(cl:defmethod front_mode-val ((m <TracerLightCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracer_msgs-msg:front_mode-val is deprecated.  Use tracer_msgs-msg:front_mode instead.")
  (front_mode m))

(cl:ensure-generic-function 'front_custom_value-val :lambda-list '(m))
(cl:defmethod front_custom_value-val ((m <TracerLightCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracer_msgs-msg:front_custom_value-val is deprecated.  Use tracer_msgs-msg:front_custom_value instead.")
  (front_custom_value m))

(cl:ensure-generic-function 'rear_mode-val :lambda-list '(m))
(cl:defmethod rear_mode-val ((m <TracerLightCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracer_msgs-msg:rear_mode-val is deprecated.  Use tracer_msgs-msg:rear_mode instead.")
  (rear_mode m))

(cl:ensure-generic-function 'rear_custom_value-val :lambda-list '(m))
(cl:defmethod rear_custom_value-val ((m <TracerLightCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracer_msgs-msg:rear_custom_value-val is deprecated.  Use tracer_msgs-msg:rear_custom_value instead.")
  (rear_custom_value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TracerLightCmd>)))
    "Constants for message type '<TracerLightCmd>"
  '((:LIGHT_CONST_OFF . 0)
    (:LIGHT_CONST_ON . 1)
    (:LIGHT_BREATH . 2)
    (:LIGHT_CUSTOM . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TracerLightCmd)))
    "Constants for message type 'TracerLightCmd"
  '((:LIGHT_CONST_OFF . 0)
    (:LIGHT_CONST_ON . 1)
    (:LIGHT_BREATH . 2)
    (:LIGHT_CUSTOM . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TracerLightCmd>) ostream)
  "Serializes a message object of type '<TracerLightCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_cmd_light_control) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_custom_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rear_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rear_custom_value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TracerLightCmd>) istream)
  "Deserializes a message object of type '<TracerLightCmd>"
    (cl:setf (cl:slot-value msg 'enable_cmd_light_control) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_custom_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rear_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rear_custom_value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TracerLightCmd>)))
  "Returns string type for a message object of type '<TracerLightCmd>"
  "tracer_msgs/TracerLightCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TracerLightCmd)))
  "Returns string type for a message object of type 'TracerLightCmd"
  "tracer_msgs/TracerLightCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TracerLightCmd>)))
  "Returns md5sum for a message object of type '<TracerLightCmd>"
  "4efcbd363caf677fd8138923f982df13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TracerLightCmd)))
  "Returns md5sum for a message object of type 'TracerLightCmd"
  "4efcbd363caf677fd8138923f982df13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TracerLightCmd>)))
  "Returns full string definition for message of type '<TracerLightCmd>"
  (cl:format cl:nil "uint8 LIGHT_CONST_OFF = 0~%uint8 LIGHT_CONST_ON = 1~%uint8 LIGHT_BREATH = 2~%uint8 LIGHT_CUSTOM = 3~%~%bool enable_cmd_light_control~%uint8 front_mode~%uint8 front_custom_value~%uint8 rear_mode~%uint8 rear_custom_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TracerLightCmd)))
  "Returns full string definition for message of type 'TracerLightCmd"
  (cl:format cl:nil "uint8 LIGHT_CONST_OFF = 0~%uint8 LIGHT_CONST_ON = 1~%uint8 LIGHT_BREATH = 2~%uint8 LIGHT_CUSTOM = 3~%~%bool enable_cmd_light_control~%uint8 front_mode~%uint8 front_custom_value~%uint8 rear_mode~%uint8 rear_custom_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TracerLightCmd>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TracerLightCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'TracerLightCmd
    (cl:cons ':enable_cmd_light_control (enable_cmd_light_control msg))
    (cl:cons ':front_mode (front_mode msg))
    (cl:cons ':front_custom_value (front_custom_value msg))
    (cl:cons ':rear_mode (rear_mode msg))
    (cl:cons ':rear_custom_value (rear_custom_value msg))
))
