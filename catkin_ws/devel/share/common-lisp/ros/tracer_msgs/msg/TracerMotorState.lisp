; Auto-generated. Do not edit!


(cl:in-package tracer_msgs-msg)


;//! \htmlinclude TracerMotorState.msg.html

(cl:defclass <TracerMotorState> (roslisp-msg-protocol:ros-message)
  ((rpm
    :reader rpm
    :initarg :rpm
    :type cl:float
    :initform 0.0))
)

(cl:defclass TracerMotorState (<TracerMotorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TracerMotorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TracerMotorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tracer_msgs-msg:<TracerMotorState> is deprecated: use tracer_msgs-msg:TracerMotorState instead.")))

(cl:ensure-generic-function 'rpm-val :lambda-list '(m))
(cl:defmethod rpm-val ((m <TracerMotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracer_msgs-msg:rpm-val is deprecated.  Use tracer_msgs-msg:rpm instead.")
  (rpm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TracerMotorState>) ostream)
  "Serializes a message object of type '<TracerMotorState>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TracerMotorState>) istream)
  "Deserializes a message object of type '<TracerMotorState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rpm) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TracerMotorState>)))
  "Returns string type for a message object of type '<TracerMotorState>"
  "tracer_msgs/TracerMotorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TracerMotorState)))
  "Returns string type for a message object of type 'TracerMotorState"
  "tracer_msgs/TracerMotorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TracerMotorState>)))
  "Returns md5sum for a message object of type '<TracerMotorState>"
  "1c487592c900c21b37f53edce9a36629")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TracerMotorState)))
  "Returns md5sum for a message object of type 'TracerMotorState"
  "1c487592c900c21b37f53edce9a36629")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TracerMotorState>)))
  "Returns full string definition for message of type '<TracerMotorState>"
  (cl:format cl:nil "#float64 current~%float64 rpm~%#float64 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TracerMotorState)))
  "Returns full string definition for message of type 'TracerMotorState"
  (cl:format cl:nil "#float64 current~%float64 rpm~%#float64 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TracerMotorState>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TracerMotorState>))
  "Converts a ROS message object to a list"
  (cl:list 'TracerMotorState
    (cl:cons ':rpm (rpm msg))
))
