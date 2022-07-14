; Auto-generated. Do not edit!


(cl:in-package tracer_msgs-msg)


;//! \htmlinclude TracerLightState.msg.html

(cl:defclass <TracerLightState> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (custom_value
    :reader custom_value
    :initarg :custom_value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TracerLightState (<TracerLightState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TracerLightState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TracerLightState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tracer_msgs-msg:<TracerLightState> is deprecated: use tracer_msgs-msg:TracerLightState instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <TracerLightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracer_msgs-msg:mode-val is deprecated.  Use tracer_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'custom_value-val :lambda-list '(m))
(cl:defmethod custom_value-val ((m <TracerLightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracer_msgs-msg:custom_value-val is deprecated.  Use tracer_msgs-msg:custom_value instead.")
  (custom_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TracerLightState>) ostream)
  "Serializes a message object of type '<TracerLightState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'custom_value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TracerLightState>) istream)
  "Deserializes a message object of type '<TracerLightState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'custom_value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TracerLightState>)))
  "Returns string type for a message object of type '<TracerLightState>"
  "tracer_msgs/TracerLightState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TracerLightState)))
  "Returns string type for a message object of type 'TracerLightState"
  "tracer_msgs/TracerLightState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TracerLightState>)))
  "Returns md5sum for a message object of type '<TracerLightState>"
  "51866248399dda20e62f6b250914288e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TracerLightState)))
  "Returns md5sum for a message object of type 'TracerLightState"
  "51866248399dda20e62f6b250914288e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TracerLightState>)))
  "Returns full string definition for message of type '<TracerLightState>"
  (cl:format cl:nil "uint8 mode~%uint8 custom_value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TracerLightState)))
  "Returns full string definition for message of type 'TracerLightState"
  (cl:format cl:nil "uint8 mode~%uint8 custom_value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TracerLightState>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TracerLightState>))
  "Converts a ROS message object to a list"
  (cl:list 'TracerLightState
    (cl:cons ':mode (mode msg))
    (cl:cons ':custom_value (custom_value msg))
))
