;; Auto-generated. Do not edit!


(when (boundp 'tracer_msgs::TracerStatus)
  (if (not (find-package "TRACER_MSGS"))
    (make-package "TRACER_MSGS"))
  (shadow 'TracerStatus (find-package "TRACER_MSGS")))
(unless (find-package "TRACER_MSGS::TRACERSTATUS")
  (make-package "TRACER_MSGS::TRACERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TracerStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MOTOR_ID_FRONT_RIGHT*" (find-package "TRACER_MSGS::TRACERSTATUS"))
(shadow '*MOTOR_ID_FRONT_RIGHT* (find-package "TRACER_MSGS::TRACERSTATUS"))
(defconstant tracer_msgs::TracerStatus::*MOTOR_ID_FRONT_RIGHT* 0)
(intern "*MOTOR_ID_FRONT_LEFT*" (find-package "TRACER_MSGS::TRACERSTATUS"))
(shadow '*MOTOR_ID_FRONT_LEFT* (find-package "TRACER_MSGS::TRACERSTATUS"))
(defconstant tracer_msgs::TracerStatus::*MOTOR_ID_FRONT_LEFT* 1)
(intern "*MOTOR_ID_REAR_RIGHT*" (find-package "TRACER_MSGS::TRACERSTATUS"))
(shadow '*MOTOR_ID_REAR_RIGHT* (find-package "TRACER_MSGS::TRACERSTATUS"))
(defconstant tracer_msgs::TracerStatus::*MOTOR_ID_REAR_RIGHT* 2)
(intern "*MOTOR_ID_REAR_LEFT*" (find-package "TRACER_MSGS::TRACERSTATUS"))
(shadow '*MOTOR_ID_REAR_LEFT* (find-package "TRACER_MSGS::TRACERSTATUS"))
(defconstant tracer_msgs::TracerStatus::*MOTOR_ID_REAR_LEFT* 3)
(intern "*LIGHT_ID_FRONT*" (find-package "TRACER_MSGS::TRACERSTATUS"))
(shadow '*LIGHT_ID_FRONT* (find-package "TRACER_MSGS::TRACERSTATUS"))
(defconstant tracer_msgs::TracerStatus::*LIGHT_ID_FRONT* 0)
(intern "*LIGHT_ID_REAR*" (find-package "TRACER_MSGS::TRACERSTATUS"))
(shadow '*LIGHT_ID_REAR* (find-package "TRACER_MSGS::TRACERSTATUS"))
(defconstant tracer_msgs::TracerStatus::*LIGHT_ID_REAR* 1)
(defclass tracer_msgs::TracerStatus
  :super ros::object
  :slots (_header _linear_velocity _angular_velocity _base_state _control_mode _fault_code _battery_voltage _motor_states _light_control_enabled _front_light_state _left_odomter _right_odomter ))

(defmethod tracer_msgs::TracerStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:linear_velocity __linear_velocity) 0.0)
    ((:angular_velocity __angular_velocity) 0.0)
    ((:base_state __base_state) 0)
    ((:control_mode __control_mode) 0)
    ((:fault_code __fault_code) 0)
    ((:battery_voltage __battery_voltage) 0.0)
    ((:motor_states __motor_states) (let (r) (dotimes (i 2) (push (instance tracer_msgs::TracerMotorState :init) r)) r))
    ((:light_control_enabled __light_control_enabled) nil)
    ((:front_light_state __front_light_state) (instance tracer_msgs::TracerLightState :init))
    ((:left_odomter __left_odomter) 0.0)
    ((:right_odomter __right_odomter) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _linear_velocity (float __linear_velocity))
   (setq _angular_velocity (float __angular_velocity))
   (setq _base_state (round __base_state))
   (setq _control_mode (round __control_mode))
   (setq _fault_code (round __fault_code))
   (setq _battery_voltage (float __battery_voltage))
   (setq _motor_states __motor_states)
   (setq _light_control_enabled __light_control_enabled)
   (setq _front_light_state __front_light_state)
   (setq _left_odomter (float __left_odomter))
   (setq _right_odomter (float __right_odomter))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:linear_velocity
   (&optional __linear_velocity)
   (if __linear_velocity (setq _linear_velocity __linear_velocity)) _linear_velocity)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:base_state
   (&optional __base_state)
   (if __base_state (setq _base_state __base_state)) _base_state)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:fault_code
   (&optional __fault_code)
   (if __fault_code (setq _fault_code __fault_code)) _fault_code)
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:motor_states
   (&rest __motor_states)
   (if (keywordp (car __motor_states))
       (send* _motor_states __motor_states)
     (progn
       (if __motor_states (setq _motor_states (car __motor_states)))
       _motor_states)))
  (:light_control_enabled
   (&optional __light_control_enabled)
   (if __light_control_enabled (setq _light_control_enabled __light_control_enabled)) _light_control_enabled)
  (:front_light_state
   (&rest __front_light_state)
   (if (keywordp (car __front_light_state))
       (send* _front_light_state __front_light_state)
     (progn
       (if __front_light_state (setq _front_light_state (car __front_light_state)))
       _front_light_state)))
  (:left_odomter
   (&optional __left_odomter)
   (if __left_odomter (setq _left_odomter __left_odomter)) _left_odomter)
  (:right_odomter
   (&optional __right_odomter)
   (if __right_odomter (setq _right_odomter __right_odomter)) _right_odomter)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _linear_velocity
    8
    ;; float64 _angular_velocity
    8
    ;; uint8 _base_state
    1
    ;; uint8 _control_mode
    1
    ;; uint8 _fault_code
    1
    ;; float64 _battery_voltage
    8
    ;; tracer_msgs/TracerMotorState[2] _motor_states
    (apply #'+ (send-all _motor_states :serialization-length))
    ;; bool _light_control_enabled
    1
    ;; tracer_msgs/TracerLightState _front_light_state
    (send _front_light_state :serialization-length)
    ;; float64 _left_odomter
    8
    ;; float64 _right_odomter
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _linear_velocity
       (sys::poke _linear_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity
       (sys::poke _angular_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _base_state
       (write-byte _base_state s)
     ;; uint8 _control_mode
       (write-byte _control_mode s)
     ;; uint8 _fault_code
       (write-byte _fault_code s)
     ;; float64 _battery_voltage
       (sys::poke _battery_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; tracer_msgs/TracerMotorState[2] _motor_states
     (dolist (elem _motor_states)
       (send elem :serialize s)
       )
     ;; bool _light_control_enabled
       (if _light_control_enabled (write-byte -1 s) (write-byte 0 s))
     ;; tracer_msgs/TracerLightState _front_light_state
       (send _front_light_state :serialize s)
     ;; float64 _left_odomter
       (sys::poke _left_odomter (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_odomter
       (sys::poke _right_odomter (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _linear_velocity
     (setq _linear_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _base_state
     (setq _base_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _control_mode
     (setq _control_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _fault_code
     (setq _fault_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; tracer_msgs/TracerMotorState[2] _motor_states
   (dotimes (i 2)
     (send (elt _motor_states i) :deserialize buf ptr-) (incf ptr- (send (elt _motor_states i) :serialization-length))
     )
   ;; bool _light_control_enabled
     (setq _light_control_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; tracer_msgs/TracerLightState _front_light_state
     (send _front_light_state :deserialize buf ptr-) (incf ptr- (send _front_light_state :serialization-length))
   ;; float64 _left_odomter
     (setq _left_odomter (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_odomter
     (setq _right_odomter (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tracer_msgs::TracerStatus :md5sum-) "e0b655d1eae0aa8dc8e69774edae9cbe")
(setf (get tracer_msgs::TracerStatus :datatype-) "tracer_msgs/TracerStatus")
(setf (get tracer_msgs::TracerStatus :definition-)
      "Header header

int8 MOTOR_ID_FRONT_RIGHT = 0
int8 MOTOR_ID_FRONT_LEFT = 1
int8 MOTOR_ID_REAR_RIGHT = 2
int8 MOTOR_ID_REAR_LEFT = 3

int8 LIGHT_ID_FRONT = 0
int8 LIGHT_ID_REAR = 1

# motion state
float64 linear_velocity
float64 angular_velocity

# base state
uint8 base_state
uint8 control_mode
uint8 fault_code
float64 battery_voltage

# motor state
TracerMotorState[2] motor_states

# light state
bool light_control_enabled
TracerLightState front_light_state

#odometer state
float64 left_odomter
float64 right_odomter

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
MSG: tracer_msgs/TracerMotorState
#float64 current
float64 rpm
#float64 temperature

================================================================================
MSG: tracer_msgs/TracerLightState
uint8 mode
uint8 custom_value
")



(provide :tracer_msgs/TracerStatus "e0b655d1eae0aa8dc8e69774edae9cbe")


