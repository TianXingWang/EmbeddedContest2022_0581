; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SetAeEnable-request.msg.html

(cl:defclass <SetAeEnable-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetAeEnable-request (<SetAeEnable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAeEnable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAeEnable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetAeEnable-request> is deprecated: use astra_camera-srv:SetAeEnable-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetAeEnable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:enable-val is deprecated.  Use astra_camera-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAeEnable-request>) ostream)
  "Serializes a message object of type '<SetAeEnable-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAeEnable-request>) istream)
  "Deserializes a message object of type '<SetAeEnable-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAeEnable-request>)))
  "Returns string type for a service object of type '<SetAeEnable-request>"
  "astra_camera/SetAeEnableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAeEnable-request)))
  "Returns string type for a service object of type 'SetAeEnable-request"
  "astra_camera/SetAeEnableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAeEnable-request>)))
  "Returns md5sum for a message object of type '<SetAeEnable-request>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAeEnable-request)))
  "Returns md5sum for a message object of type 'SetAeEnable-request"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAeEnable-request>)))
  "Returns full string definition for message of type '<SetAeEnable-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAeEnable-request)))
  "Returns full string definition for message of type 'SetAeEnable-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAeEnable-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAeEnable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAeEnable-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude SetAeEnable-response.msg.html

(cl:defclass <SetAeEnable-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetAeEnable-response (<SetAeEnable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAeEnable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAeEnable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetAeEnable-response> is deprecated: use astra_camera-srv:SetAeEnable-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAeEnable-response>) ostream)
  "Serializes a message object of type '<SetAeEnable-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAeEnable-response>) istream)
  "Deserializes a message object of type '<SetAeEnable-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAeEnable-response>)))
  "Returns string type for a service object of type '<SetAeEnable-response>"
  "astra_camera/SetAeEnableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAeEnable-response)))
  "Returns string type for a service object of type 'SetAeEnable-response"
  "astra_camera/SetAeEnableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAeEnable-response>)))
  "Returns md5sum for a message object of type '<SetAeEnable-response>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAeEnable-response)))
  "Returns md5sum for a message object of type 'SetAeEnable-response"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAeEnable-response>)))
  "Returns full string definition for message of type '<SetAeEnable-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAeEnable-response)))
  "Returns full string definition for message of type 'SetAeEnable-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAeEnable-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAeEnable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAeEnable-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAeEnable)))
  'SetAeEnable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAeEnable)))
  'SetAeEnable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAeEnable)))
  "Returns string type for a service object of type '<SetAeEnable>"
  "astra_camera/SetAeEnable")