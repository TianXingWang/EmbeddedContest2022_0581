; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SetAutoExposure-request.msg.html

(cl:defclass <SetAutoExposure-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetAutoExposure-request (<SetAutoExposure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAutoExposure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAutoExposure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetAutoExposure-request> is deprecated: use astra_camera-srv:SetAutoExposure-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetAutoExposure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:enable-val is deprecated.  Use astra_camera-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAutoExposure-request>) ostream)
  "Serializes a message object of type '<SetAutoExposure-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAutoExposure-request>) istream)
  "Deserializes a message object of type '<SetAutoExposure-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAutoExposure-request>)))
  "Returns string type for a service object of type '<SetAutoExposure-request>"
  "astra_camera/SetAutoExposureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAutoExposure-request)))
  "Returns string type for a service object of type 'SetAutoExposure-request"
  "astra_camera/SetAutoExposureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAutoExposure-request>)))
  "Returns md5sum for a message object of type '<SetAutoExposure-request>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAutoExposure-request)))
  "Returns md5sum for a message object of type 'SetAutoExposure-request"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAutoExposure-request>)))
  "Returns full string definition for message of type '<SetAutoExposure-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAutoExposure-request)))
  "Returns full string definition for message of type 'SetAutoExposure-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAutoExposure-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAutoExposure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAutoExposure-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude SetAutoExposure-response.msg.html

(cl:defclass <SetAutoExposure-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetAutoExposure-response (<SetAutoExposure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAutoExposure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAutoExposure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetAutoExposure-response> is deprecated: use astra_camera-srv:SetAutoExposure-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAutoExposure-response>) ostream)
  "Serializes a message object of type '<SetAutoExposure-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAutoExposure-response>) istream)
  "Deserializes a message object of type '<SetAutoExposure-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAutoExposure-response>)))
  "Returns string type for a service object of type '<SetAutoExposure-response>"
  "astra_camera/SetAutoExposureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAutoExposure-response)))
  "Returns string type for a service object of type 'SetAutoExposure-response"
  "astra_camera/SetAutoExposureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAutoExposure-response>)))
  "Returns md5sum for a message object of type '<SetAutoExposure-response>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAutoExposure-response)))
  "Returns md5sum for a message object of type 'SetAutoExposure-response"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAutoExposure-response>)))
  "Returns full string definition for message of type '<SetAutoExposure-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAutoExposure-response)))
  "Returns full string definition for message of type 'SetAutoExposure-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAutoExposure-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAutoExposure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAutoExposure-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAutoExposure)))
  'SetAutoExposure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAutoExposure)))
  'SetAutoExposure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAutoExposure)))
  "Returns string type for a service object of type '<SetAutoExposure>"
  "astra_camera/SetAutoExposure")