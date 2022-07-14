;; Auto-generated. Do not edit!


(when (boundp 'tracer_msgs::TracerLightCmd)
  (if (not (find-package "TRACER_MSGS"))
    (make-package "TRACER_MSGS"))
  (shadow 'TracerLightCmd (find-package "TRACER_MSGS")))
(unless (find-package "TRACER_MSGS::TRACERLIGHTCMD")
  (make-package "TRACER_MSGS::TRACERLIGHTCMD"))

(in-package "ROS")
;;//! \htmlinclude TracerLightCmd.msg.html


(intern "*LIGHT_CONST_OFF*" (find-package "TRACER_MSGS::TRACERLIGHTCMD"))
(shadow '*LIGHT_CONST_OFF* (find-package "TRACER_MSGS::TRACERLIGHTCMD"))
(defconstant tracer_msgs::TracerLightCmd::*LIGHT_CONST_OFF* 0)
(intern "*LIGHT_CONST_ON*" (find-package "TRACER_MSGS::TRACERLIGHTCMD"))
(shadow '*LIGHT_CONST_ON* (find-package "TRACER_MSGS::TRACERLIGHTCMD"))
(defconstant tracer_msgs::TracerLightCmd::*LIGHT_CONST_ON* 1)
(intern "*LIGHT_BREATH*" (find-package "TRACER_MSGS::TRACERLIGHTCMD"))
(shadow '*LIGHT_BREATH* (find-package "TRACER_MSGS::TRACERLIGHTCMD"))
(defconstant tracer_msgs::TracerLightCmd::*LIGHT_BREATH* 2)
(intern "*LIGHT_CUSTOM*" (find-package "TRACER_MSGS::TRACERLIGHTCMD"))
(shadow '*LIGHT_CUSTOM* (find-package "TRACER_MSGS::TRACERLIGHTCMD"))
(defconstant tracer_msgs::TracerLightCmd::*LIGHT_CUSTOM* 3)
(defclass tracer_msgs::TracerLightCmd
  :super ros::object
  :slots (_enable_cmd_light_control _front_mode _front_custom_value _rear_mode _rear_custom_value ))

(defmethod tracer_msgs::TracerLightCmd
  (:init
   (&key
    ((:enable_cmd_light_control __enable_cmd_light_control) nil)
    ((:front_mode __front_mode) 0)
    ((:front_custom_value __front_custom_value) 0)
    ((:rear_mode __rear_mode) 0)
    ((:rear_custom_value __rear_custom_value) 0)
    )
   (send-super :init)
   (setq _enable_cmd_light_control __enable_cmd_light_control)
   (setq _front_mode (round __front_mode))
   (setq _front_custom_value (round __front_custom_value))
   (setq _rear_mode (round __rear_mode))
   (setq _rear_custom_value (round __rear_custom_value))
   self)
  (:enable_cmd_light_control
   (&optional __enable_cmd_light_control)
   (if __enable_cmd_light_control (setq _enable_cmd_light_control __enable_cmd_light_control)) _enable_cmd_light_control)
  (:front_mode
   (&optional __front_mode)
   (if __front_mode (setq _front_mode __front_mode)) _front_mode)
  (:front_custom_value
   (&optional __front_custom_value)
   (if __front_custom_value (setq _front_custom_value __front_custom_value)) _front_custom_value)
  (:rear_mode
   (&optional __rear_mode)
   (if __rear_mode (setq _rear_mode __rear_mode)) _rear_mode)
  (:rear_custom_value
   (&optional __rear_custom_value)
   (if __rear_custom_value (setq _rear_custom_value __rear_custom_value)) _rear_custom_value)
  (:serialization-length
   ()
   (+
    ;; bool _enable_cmd_light_control
    1
    ;; uint8 _front_mode
    1
    ;; uint8 _front_custom_value
    1
    ;; uint8 _rear_mode
    1
    ;; uint8 _rear_custom_value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable_cmd_light_control
       (if _enable_cmd_light_control (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _front_mode
       (write-byte _front_mode s)
     ;; uint8 _front_custom_value
       (write-byte _front_custom_value s)
     ;; uint8 _rear_mode
       (write-byte _rear_mode s)
     ;; uint8 _rear_custom_value
       (write-byte _rear_custom_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable_cmd_light_control
     (setq _enable_cmd_light_control (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _front_mode
     (setq _front_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _front_custom_value
     (setq _front_custom_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rear_mode
     (setq _rear_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rear_custom_value
     (setq _rear_custom_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tracer_msgs::TracerLightCmd :md5sum-) "4efcbd363caf677fd8138923f982df13")
(setf (get tracer_msgs::TracerLightCmd :datatype-) "tracer_msgs/TracerLightCmd")
(setf (get tracer_msgs::TracerLightCmd :definition-)
      "uint8 LIGHT_CONST_OFF = 0
uint8 LIGHT_CONST_ON = 1
uint8 LIGHT_BREATH = 2
uint8 LIGHT_CUSTOM = 3

bool enable_cmd_light_control
uint8 front_mode
uint8 front_custom_value
uint8 rear_mode
uint8 rear_custom_value

")



(provide :tracer_msgs/TracerLightCmd "4efcbd363caf677fd8138923f982df13")


