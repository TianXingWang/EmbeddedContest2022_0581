; Auto-generated. Do not edit!


(cl:in-package lslidar_n301_msgs-msg)


;//! \htmlinclude LslidarN301Difop.msg.html

(cl:defclass <LslidarN301Difop> (roslisp-msg-protocol:ros-message)
  ((temperature
    :reader temperature
    :initarg :temperature
    :type cl:integer
    :initform 0)
   (rpm
    :reader rpm
    :initarg :rpm
    :type cl:integer
    :initform 0))
)

(cl:defclass LslidarN301Difop (<LslidarN301Difop>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LslidarN301Difop>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LslidarN301Difop)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_n301_msgs-msg:<LslidarN301Difop> is deprecated: use lslidar_n301_msgs-msg:LslidarN301Difop instead.")))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <LslidarN301Difop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_n301_msgs-msg:temperature-val is deprecated.  Use lslidar_n301_msgs-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'rpm-val :lambda-list '(m))
(cl:defmethod rpm-val ((m <LslidarN301Difop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_n301_msgs-msg:rpm-val is deprecated.  Use lslidar_n301_msgs-msg:rpm instead.")
  (rpm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LslidarN301Difop>) ostream)
  "Serializes a message object of type '<LslidarN301Difop>"
  (cl:let* ((signed (cl:slot-value msg 'temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rpm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LslidarN301Difop>) istream)
  "Deserializes a message object of type '<LslidarN301Difop>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rpm) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LslidarN301Difop>)))
  "Returns string type for a message object of type '<LslidarN301Difop>"
  "lslidar_n301_msgs/LslidarN301Difop")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LslidarN301Difop)))
  "Returns string type for a message object of type 'LslidarN301Difop"
  "lslidar_n301_msgs/LslidarN301Difop")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LslidarN301Difop>)))
  "Returns md5sum for a message object of type '<LslidarN301Difop>"
  "c9ba6a08f315575f30cfd23b074c07a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LslidarN301Difop)))
  "Returns md5sum for a message object of type 'LslidarN301Difop"
  "c9ba6a08f315575f30cfd23b074c07a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LslidarN301Difop>)))
  "Returns full string definition for message of type '<LslidarN301Difop>"
  (cl:format cl:nil "int64 temperature~%int64 rpm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LslidarN301Difop)))
  "Returns full string definition for message of type 'LslidarN301Difop"
  (cl:format cl:nil "int64 temperature~%int64 rpm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LslidarN301Difop>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LslidarN301Difop>))
  "Converts a ROS message object to a list"
  (cl:list 'LslidarN301Difop
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':rpm (rpm msg))
))
