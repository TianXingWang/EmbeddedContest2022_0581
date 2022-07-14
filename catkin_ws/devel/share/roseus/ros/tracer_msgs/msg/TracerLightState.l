;; Auto-generated. Do not edit!


(when (boundp 'tracer_msgs::TracerLightState)
  (if (not (find-package "TRACER_MSGS"))
    (make-package "TRACER_MSGS"))
  (shadow 'TracerLightState (find-package "TRACER_MSGS")))
(unless (find-package "TRACER_MSGS::TRACERLIGHTSTATE")
  (make-package "TRACER_MSGS::TRACERLIGHTSTATE"))

(in-package "ROS")
;;//! \htmlinclude TracerLightState.msg.html


(defclass tracer_msgs::TracerLightState
  :super ros::object
  :slots (_mode _custom_value ))

(defmethod tracer_msgs::TracerLightState
  (:init
   (&key
    ((:mode __mode) 0)
    ((:custom_value __custom_value) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _custom_value (round __custom_value))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:custom_value
   (&optional __custom_value)
   (if __custom_value (setq _custom_value __custom_value)) _custom_value)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; uint8 _custom_value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _custom_value
       (write-byte _custom_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _custom_value
     (setq _custom_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tracer_msgs::TracerLightState :md5sum-) "51866248399dda20e62f6b250914288e")
(setf (get tracer_msgs::TracerLightState :datatype-) "tracer_msgs/TracerLightState")
(setf (get tracer_msgs::TracerLightState :definition-)
      "uint8 mode
uint8 custom_value
")



(provide :tracer_msgs/TracerLightState "51866248399dda20e62f6b250914288e")


