; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SetFan-request.msg.html

(cl:defclass <SetFan-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetFan-request (<SetFan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetFan-request> is deprecated: use astra_camera-srv:SetFan-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetFan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:enable-val is deprecated.  Use astra_camera-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFan-request>) ostream)
  "Serializes a message object of type '<SetFan-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFan-request>) istream)
  "Deserializes a message object of type '<SetFan-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFan-request>)))
  "Returns string type for a service object of type '<SetFan-request>"
  "astra_camera/SetFanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFan-request)))
  "Returns string type for a service object of type 'SetFan-request"
  "astra_camera/SetFanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFan-request>)))
  "Returns md5sum for a message object of type '<SetFan-request>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFan-request)))
  "Returns md5sum for a message object of type 'SetFan-request"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFan-request>)))
  "Returns full string definition for message of type '<SetFan-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFan-request)))
  "Returns full string definition for message of type 'SetFan-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFan-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFan-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude SetFan-response.msg.html

(cl:defclass <SetFan-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetFan-response (<SetFan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetFan-response> is deprecated: use astra_camera-srv:SetFan-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFan-response>) ostream)
  "Serializes a message object of type '<SetFan-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFan-response>) istream)
  "Deserializes a message object of type '<SetFan-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFan-response>)))
  "Returns string type for a service object of type '<SetFan-response>"
  "astra_camera/SetFanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFan-response)))
  "Returns string type for a service object of type 'SetFan-response"
  "astra_camera/SetFanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFan-response>)))
  "Returns md5sum for a message object of type '<SetFan-response>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFan-response)))
  "Returns md5sum for a message object of type 'SetFan-response"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFan-response>)))
  "Returns full string definition for message of type '<SetFan-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFan-response)))
  "Returns full string definition for message of type 'SetFan-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFan-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFan-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetFan)))
  'SetFan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetFan)))
  'SetFan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFan)))
  "Returns string type for a service object of type '<SetFan>"
  "astra_camera/SetFan")