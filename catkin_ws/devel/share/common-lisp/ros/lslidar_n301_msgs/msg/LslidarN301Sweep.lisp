; Auto-generated. Do not edit!


(cl:in-package lslidar_n301_msgs-msg)


;//! \htmlinclude LslidarN301Sweep.msg.html

(cl:defclass <LslidarN301Sweep> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (scans
    :reader scans
    :initarg :scans
    :type (cl:vector lslidar_n301_msgs-msg:LslidarN301Scan)
   :initform (cl:make-array 16 :element-type 'lslidar_n301_msgs-msg:LslidarN301Scan :initial-element (cl:make-instance 'lslidar_n301_msgs-msg:LslidarN301Scan))))
)

(cl:defclass LslidarN301Sweep (<LslidarN301Sweep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LslidarN301Sweep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LslidarN301Sweep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_n301_msgs-msg:<LslidarN301Sweep> is deprecated: use lslidar_n301_msgs-msg:LslidarN301Sweep instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LslidarN301Sweep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_n301_msgs-msg:header-val is deprecated.  Use lslidar_n301_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'scans-val :lambda-list '(m))
(cl:defmethod scans-val ((m <LslidarN301Sweep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_n301_msgs-msg:scans-val is deprecated.  Use lslidar_n301_msgs-msg:scans instead.")
  (scans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LslidarN301Sweep>) ostream)
  "Serializes a message object of type '<LslidarN301Sweep>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'scans))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LslidarN301Sweep>) istream)
  "Deserializes a message object of type '<LslidarN301Sweep>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'scans) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'scans)))
    (cl:dotimes (i 16)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lslidar_n301_msgs-msg:LslidarN301Scan))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LslidarN301Sweep>)))
  "Returns string type for a message object of type '<LslidarN301Sweep>"
  "lslidar_n301_msgs/LslidarN301Sweep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LslidarN301Sweep)))
  "Returns string type for a message object of type 'LslidarN301Sweep"
  "lslidar_n301_msgs/LslidarN301Sweep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LslidarN301Sweep>)))
  "Returns md5sum for a message object of type '<LslidarN301Sweep>"
  "e0395900ded93e728803e208b8b88005")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LslidarN301Sweep)))
  "Returns md5sum for a message object of type 'LslidarN301Sweep"
  "e0395900ded93e728803e208b8b88005")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LslidarN301Sweep>)))
  "Returns full string definition for message of type '<LslidarN301Sweep>"
  (cl:format cl:nil "Header header~%~%# The 0th scan is at the bottom~%# VelodynePuckScan[16] scans~%LslidarN301Scan[16] scans~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lslidar_n301_msgs/LslidarN301Scan~%# Altitude of all the points within this scan~%float64 altitude~%~%# The valid points in this scan sorted by azimuth~%# from 0 to 359.99~%#VelodynePuckPoint[] points~%LslidarN301Point[] points~%~%================================================================================~%MSG: lslidar_n301_msgs/LslidarN301Point~%# Time when the point is captured~%float32 time~%~%# Converted distance in the sensor frame~%float64 x~%float64 y~%float64 z~%~%# Raw measurement from Leishen N301~%float64 azimuth~%float64 distance~%float64 intensity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LslidarN301Sweep)))
  "Returns full string definition for message of type 'LslidarN301Sweep"
  (cl:format cl:nil "Header header~%~%# The 0th scan is at the bottom~%# VelodynePuckScan[16] scans~%LslidarN301Scan[16] scans~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lslidar_n301_msgs/LslidarN301Scan~%# Altitude of all the points within this scan~%float64 altitude~%~%# The valid points in this scan sorted by azimuth~%# from 0 to 359.99~%#VelodynePuckPoint[] points~%LslidarN301Point[] points~%~%================================================================================~%MSG: lslidar_n301_msgs/LslidarN301Point~%# Time when the point is captured~%float32 time~%~%# Converted distance in the sensor frame~%float64 x~%float64 y~%float64 z~%~%# Raw measurement from Leishen N301~%float64 azimuth~%float64 distance~%float64 intensity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LslidarN301Sweep>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'scans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LslidarN301Sweep>))
  "Converts a ROS message object to a list"
  (cl:list 'LslidarN301Sweep
    (cl:cons ':header (header msg))
    (cl:cons ':scans (scans msg))
))
