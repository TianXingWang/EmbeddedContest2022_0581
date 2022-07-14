;; Auto-generated. Do not edit!


(when (boundp 'lslidar_n301_msgs::LslidarN301Sweep)
  (if (not (find-package "LSLIDAR_N301_MSGS"))
    (make-package "LSLIDAR_N301_MSGS"))
  (shadow 'LslidarN301Sweep (find-package "LSLIDAR_N301_MSGS")))
(unless (find-package "LSLIDAR_N301_MSGS::LSLIDARN301SWEEP")
  (make-package "LSLIDAR_N301_MSGS::LSLIDARN301SWEEP"))

(in-package "ROS")
;;//! \htmlinclude LslidarN301Sweep.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lslidar_n301_msgs::LslidarN301Sweep
  :super ros::object
  :slots (_header _scans ))

(defmethod lslidar_n301_msgs::LslidarN301Sweep
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:scans __scans) (let (r) (dotimes (i 16) (push (instance lslidar_n301_msgs::LslidarN301Scan :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _scans __scans)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:scans
   (&rest __scans)
   (if (keywordp (car __scans))
       (send* _scans __scans)
     (progn
       (if __scans (setq _scans (car __scans)))
       _scans)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; lslidar_n301_msgs/LslidarN301Scan[16] _scans
    (apply #'+ (send-all _scans :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; lslidar_n301_msgs/LslidarN301Scan[16] _scans
     (dolist (elem _scans)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; lslidar_n301_msgs/LslidarN301Scan[16] _scans
   (dotimes (i 16)
     (send (elt _scans i) :deserialize buf ptr-) (incf ptr- (send (elt _scans i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get lslidar_n301_msgs::LslidarN301Sweep :md5sum-) "e0395900ded93e728803e208b8b88005")
(setf (get lslidar_n301_msgs::LslidarN301Sweep :datatype-) "lslidar_n301_msgs/LslidarN301Sweep")
(setf (get lslidar_n301_msgs::LslidarN301Sweep :definition-)
      "Header header

# The 0th scan is at the bottom
# VelodynePuckScan[16] scans
LslidarN301Scan[16] scans

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: lslidar_n301_msgs/LslidarN301Scan
# Altitude of all the points within this scan
float64 altitude

# The valid points in this scan sorted by azimuth
# from 0 to 359.99
#VelodynePuckPoint[] points
LslidarN301Point[] points

================================================================================
MSG: lslidar_n301_msgs/LslidarN301Point
# Time when the point is captured
float32 time

# Converted distance in the sensor frame
float64 x
float64 y
float64 z

# Raw measurement from Leishen N301
float64 azimuth
float64 distance
float64 intensity

")



(provide :lslidar_n301_msgs/LslidarN301Sweep "e0395900ded93e728803e208b8b88005")


