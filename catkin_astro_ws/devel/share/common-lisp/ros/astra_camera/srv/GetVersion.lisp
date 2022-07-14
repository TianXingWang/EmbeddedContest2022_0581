; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude GetVersion-request.msg.html

(cl:defclass <GetVersion-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetVersion-request (<GetVersion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVersion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVersion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetVersion-request> is deprecated: use astra_camera-srv:GetVersion-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVersion-request>) ostream)
  "Serializes a message object of type '<GetVersion-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVersion-request>) istream)
  "Deserializes a message object of type '<GetVersion-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVersion-request>)))
  "Returns string type for a service object of type '<GetVersion-request>"
  "astra_camera/GetVersionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVersion-request)))
  "Returns string type for a service object of type 'GetVersion-request"
  "astra_camera/GetVersionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVersion-request>)))
  "Returns md5sum for a message object of type '<GetVersion-request>"
  "9dcb65d43afc4a7688056ebe631dc337")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVersion-request)))
  "Returns md5sum for a message object of type 'GetVersion-request"
  "9dcb65d43afc4a7688056ebe631dc337")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVersion-request>)))
  "Returns full string definition for message of type '<GetVersion-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVersion-request)))
  "Returns full string definition for message of type 'GetVersion-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVersion-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVersion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVersion-request
))
;//! \htmlinclude GetVersion-response.msg.html

(cl:defclass <GetVersion-response> (roslisp-msg-protocol:ros-message)
  ((version
    :reader version
    :initarg :version
    :type cl:string
    :initform "")
   (core_version
    :reader core_version
    :initarg :core_version
    :type cl:string
    :initform ""))
)

(cl:defclass GetVersion-response (<GetVersion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVersion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVersion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetVersion-response> is deprecated: use astra_camera-srv:GetVersion-response instead.")))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <GetVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:version-val is deprecated.  Use astra_camera-srv:version instead.")
  (version m))

(cl:ensure-generic-function 'core_version-val :lambda-list '(m))
(cl:defmethod core_version-val ((m <GetVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:core_version-val is deprecated.  Use astra_camera-srv:core_version instead.")
  (core_version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVersion-response>) ostream)
  "Serializes a message object of type '<GetVersion-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'core_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'core_version))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVersion-response>) istream)
  "Deserializes a message object of type '<GetVersion-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'core_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'core_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVersion-response>)))
  "Returns string type for a service object of type '<GetVersion-response>"
  "astra_camera/GetVersionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVersion-response)))
  "Returns string type for a service object of type 'GetVersion-response"
  "astra_camera/GetVersionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVersion-response>)))
  "Returns md5sum for a message object of type '<GetVersion-response>"
  "9dcb65d43afc4a7688056ebe631dc337")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVersion-response)))
  "Returns md5sum for a message object of type 'GetVersion-response"
  "9dcb65d43afc4a7688056ebe631dc337")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVersion-response>)))
  "Returns full string definition for message of type '<GetVersion-response>"
  (cl:format cl:nil "string version~%string core_version~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVersion-response)))
  "Returns full string definition for message of type 'GetVersion-response"
  (cl:format cl:nil "string version~%string core_version~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVersion-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'version))
     4 (cl:length (cl:slot-value msg 'core_version))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVersion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVersion-response
    (cl:cons ':version (version msg))
    (cl:cons ':core_version (core_version msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetVersion)))
  'GetVersion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetVersion)))
  'GetVersion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVersion)))
  "Returns string type for a service object of type '<GetVersion>"
  "astra_camera/GetVersion")