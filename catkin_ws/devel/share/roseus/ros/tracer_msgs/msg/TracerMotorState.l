;; Auto-generated. Do not edit!


(when (boundp 'tracer_msgs::TracerMotorState)
  (if (not (find-package "TRACER_MSGS"))
    (make-package "TRACER_MSGS"))
  (shadow 'TracerMotorState (find-package "TRACER_MSGS")))
(unless (find-package "TRACER_MSGS::TRACERMOTORSTATE")
  (make-package "TRACER_MSGS::TRACERMOTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude TracerMotorState.msg.html


(defclass tracer_msgs::TracerMotorState
  :super ros::object
  :slots (_rpm ))

(defmethod tracer_msgs::TracerMotorState
  (:init
   (&key
    ((:rpm __rpm) 0.0)
    )
   (send-super :init)
   (setq _rpm (float __rpm))
   self)
  (:rpm
   (&optional __rpm)
   (if __rpm (setq _rpm __rpm)) _rpm)
  (:serialization-length
   ()
   (+
    ;; float64 _rpm
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _rpm
       (sys::poke _rpm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _rpm
     (setq _rpm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tracer_msgs::TracerMotorState :md5sum-) "1c487592c900c21b37f53edce9a36629")
(setf (get tracer_msgs::TracerMotorState :datatype-) "tracer_msgs/TracerMotorState")
(setf (get tracer_msgs::TracerMotorState :definition-)
      "#float64 current
float64 rpm
#float64 temperature

")



(provide :tracer_msgs/TracerMotorState "1c487592c900c21b37f53edce9a36629")


