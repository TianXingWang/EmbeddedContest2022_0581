; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SetMirror-request.msg.html

(cl:defclass <SetMirror-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetMirror-request (<SetMirror-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMirror-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMirror-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetMirror-request> is deprecated: use astra_camera-srv:SetMirror-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetMirror-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:enable-val is deprecated.  Use astra_camera-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMirror-request>) ostream)
  "Serializes a message object of type '<SetMirror-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMirror-request>) istream)
  "Deserializes a message object of type '<SetMirror-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMirror-request>)))
  "Returns string type for a service object of type '<SetMirror-request>"
  "astra_camera/SetMirrorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMirror-request)))
  "Returns string type for a service object of type 'SetMirror-request"
  "astra_camera/SetMirrorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMirror-request>)))
  "Returns md5sum for a message object of type '<SetMirror-request>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMirror-request)))
  "Returns md5sum for a message object of type 'SetMirror-request"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMirror-request>)))
  "Returns full string definition for message of type '<SetMirror-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMirror-request)))
  "Returns full string definition for message of type 'SetMirror-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMirror-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMirror-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMirror-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude SetMirror-response.msg.html

(cl:defclass <SetMirror-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetMirror-response (<SetMirror-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMirror-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMirror-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetMirror-response> is deprecated: use astra_camera-srv:SetMirror-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMirror-response>) ostream)
  "Serializes a message object of type '<SetMirror-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMirror-response>) istream)
  "Deserializes a message object of type '<SetMirror-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMirror-response>)))
  "Returns string type for a service object of type '<SetMirror-response>"
  "astra_camera/SetMirrorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMirror-response)))
  "Returns string type for a service object of type 'SetMirror-response"
  "astra_camera/SetMirrorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMirror-response>)))
  "Returns md5sum for a message object of type '<SetMirror-response>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMirror-response)))
  "Returns md5sum for a message object of type 'SetMirror-response"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMirror-response>)))
  "Returns full string definition for message of type '<SetMirror-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMirror-response)))
  "Returns full string definition for message of type 'SetMirror-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMirror-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMirror-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMirror-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMirror)))
  'SetMirror-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMirror)))
  'SetMirror-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMirror)))
  "Returns string type for a service object of type '<SetMirror>"
  "astra_camera/SetMirror")