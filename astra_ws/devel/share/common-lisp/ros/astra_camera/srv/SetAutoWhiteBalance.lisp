; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SetAutoWhiteBalance-request.msg.html

(cl:defclass <SetAutoWhiteBalance-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetAutoWhiteBalance-request (<SetAutoWhiteBalance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAutoWhiteBalance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAutoWhiteBalance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetAutoWhiteBalance-request> is deprecated: use astra_camera-srv:SetAutoWhiteBalance-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetAutoWhiteBalance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:enable-val is deprecated.  Use astra_camera-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAutoWhiteBalance-request>) ostream)
  "Serializes a message object of type '<SetAutoWhiteBalance-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAutoWhiteBalance-request>) istream)
  "Deserializes a message object of type '<SetAutoWhiteBalance-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAutoWhiteBalance-request>)))
  "Returns string type for a service object of type '<SetAutoWhiteBalance-request>"
  "astra_camera/SetAutoWhiteBalanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAutoWhiteBalance-request)))
  "Returns string type for a service object of type 'SetAutoWhiteBalance-request"
  "astra_camera/SetAutoWhiteBalanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAutoWhiteBalance-request>)))
  "Returns md5sum for a message object of type '<SetAutoWhiteBalance-request>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAutoWhiteBalance-request)))
  "Returns md5sum for a message object of type 'SetAutoWhiteBalance-request"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAutoWhiteBalance-request>)))
  "Returns full string definition for message of type '<SetAutoWhiteBalance-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAutoWhiteBalance-request)))
  "Returns full string definition for message of type 'SetAutoWhiteBalance-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAutoWhiteBalance-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAutoWhiteBalance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAutoWhiteBalance-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude SetAutoWhiteBalance-response.msg.html

(cl:defclass <SetAutoWhiteBalance-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetAutoWhiteBalance-response (<SetAutoWhiteBalance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAutoWhiteBalance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAutoWhiteBalance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetAutoWhiteBalance-response> is deprecated: use astra_camera-srv:SetAutoWhiteBalance-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAutoWhiteBalance-response>) ostream)
  "Serializes a message object of type '<SetAutoWhiteBalance-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAutoWhiteBalance-response>) istream)
  "Deserializes a message object of type '<SetAutoWhiteBalance-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAutoWhiteBalance-response>)))
  "Returns string type for a service object of type '<SetAutoWhiteBalance-response>"
  "astra_camera/SetAutoWhiteBalanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAutoWhiteBalance-response)))
  "Returns string type for a service object of type 'SetAutoWhiteBalance-response"
  "astra_camera/SetAutoWhiteBalanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAutoWhiteBalance-response>)))
  "Returns md5sum for a message object of type '<SetAutoWhiteBalance-response>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAutoWhiteBalance-response)))
  "Returns md5sum for a message object of type 'SetAutoWhiteBalance-response"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAutoWhiteBalance-response>)))
  "Returns full string definition for message of type '<SetAutoWhiteBalance-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAutoWhiteBalance-response)))
  "Returns full string definition for message of type 'SetAutoWhiteBalance-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAutoWhiteBalance-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAutoWhiteBalance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAutoWhiteBalance-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAutoWhiteBalance)))
  'SetAutoWhiteBalance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAutoWhiteBalance)))
  'SetAutoWhiteBalance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAutoWhiteBalance)))
  "Returns string type for a service object of type '<SetAutoWhiteBalance>"
  "astra_camera/SetAutoWhiteBalance")