; Auto-generated. Do not edit!


(cl:in-package turtlebot_actions-msg)


;//! \htmlinclude FindFiducialGoal.msg.html

(cl:defclass <FindFiducialGoal> (roslisp-msg-protocol:ros-message)
  ((camera_name
    :reader camera_name
    :initarg :camera_name
    :type cl:string
    :initform "")
   (pattern_width
    :reader pattern_width
    :initarg :pattern_width
    :type cl:fixnum
    :initform 0)
   (pattern_height
    :reader pattern_height
    :initarg :pattern_height
    :type cl:fixnum
    :initform 0)
   (pattern_size
    :reader pattern_size
    :initarg :pattern_size
    :type cl:float
    :initform 0.0)
   (pattern_type
    :reader pattern_type
    :initarg :pattern_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FindFiducialGoal (<FindFiducialGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindFiducialGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindFiducialGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot_actions-msg:<FindFiducialGoal> is deprecated: use turtlebot_actions-msg:FindFiducialGoal instead.")))

(cl:ensure-generic-function 'camera_name-val :lambda-list '(m))
(cl:defmethod camera_name-val ((m <FindFiducialGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_actions-msg:camera_name-val is deprecated.  Use turtlebot_actions-msg:camera_name instead.")
  (camera_name m))

(cl:ensure-generic-function 'pattern_width-val :lambda-list '(m))
(cl:defmethod pattern_width-val ((m <FindFiducialGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_actions-msg:pattern_width-val is deprecated.  Use turtlebot_actions-msg:pattern_width instead.")
  (pattern_width m))

(cl:ensure-generic-function 'pattern_height-val :lambda-list '(m))
(cl:defmethod pattern_height-val ((m <FindFiducialGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_actions-msg:pattern_height-val is deprecated.  Use turtlebot_actions-msg:pattern_height instead.")
  (pattern_height m))

(cl:ensure-generic-function 'pattern_size-val :lambda-list '(m))
(cl:defmethod pattern_size-val ((m <FindFiducialGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_actions-msg:pattern_size-val is deprecated.  Use turtlebot_actions-msg:pattern_size instead.")
  (pattern_size m))

(cl:ensure-generic-function 'pattern_type-val :lambda-list '(m))
(cl:defmethod pattern_type-val ((m <FindFiducialGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_actions-msg:pattern_type-val is deprecated.  Use turtlebot_actions-msg:pattern_type instead.")
  (pattern_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FindFiducialGoal>)))
    "Constants for message type '<FindFiducialGoal>"
  '((:CHESSBOARD . 1)
    (:CIRCLES_GRID . 2)
    (:ASYMMETRIC_CIRCLES_GRID . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FindFiducialGoal)))
    "Constants for message type 'FindFiducialGoal"
  '((:CHESSBOARD . 1)
    (:CIRCLES_GRID . 2)
    (:ASYMMETRIC_CIRCLES_GRID . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindFiducialGoal>) ostream)
  "Serializes a message object of type '<FindFiducialGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pattern_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pattern_height)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pattern_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pattern_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindFiducialGoal>) istream)
  "Deserializes a message object of type '<FindFiducialGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pattern_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pattern_height)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pattern_size) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pattern_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindFiducialGoal>)))
  "Returns string type for a message object of type '<FindFiducialGoal>"
  "turtlebot_actions/FindFiducialGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindFiducialGoal)))
  "Returns string type for a message object of type 'FindFiducialGoal"
  "turtlebot_actions/FindFiducialGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindFiducialGoal>)))
  "Returns md5sum for a message object of type '<FindFiducialGoal>"
  "8906385fe785bb5733551eb61968fe5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindFiducialGoal)))
  "Returns md5sum for a message object of type 'FindFiducialGoal"
  "8906385fe785bb5733551eb61968fe5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindFiducialGoal>)))
  "Returns full string definition for message of type '<FindFiducialGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%uint8   CHESSBOARD = 1~%uint8   CIRCLES_GRID = 2~%uint8   ASYMMETRIC_CIRCLES_GRID =3~%~%string    camera_name       # name of the camera ~%uint8     pattern_width     # number of objects across~%uint8     pattern_height    # number of objects down~%float32   pattern_size      # size the object pattern (square size or circle size)~%uint8     pattern_type      # type of pattern (CHESSBOARD, CIRCLES_GRID, ASYMMETRIC_CIRCLES_GRID)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindFiducialGoal)))
  "Returns full string definition for message of type 'FindFiducialGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%uint8   CHESSBOARD = 1~%uint8   CIRCLES_GRID = 2~%uint8   ASYMMETRIC_CIRCLES_GRID =3~%~%string    camera_name       # name of the camera ~%uint8     pattern_width     # number of objects across~%uint8     pattern_height    # number of objects down~%float32   pattern_size      # size the object pattern (square size or circle size)~%uint8     pattern_type      # type of pattern (CHESSBOARD, CIRCLES_GRID, ASYMMETRIC_CIRCLES_GRID)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindFiducialGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'camera_name))
     1
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindFiducialGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'FindFiducialGoal
    (cl:cons ':camera_name (camera_name msg))
    (cl:cons ':pattern_width (pattern_width msg))
    (cl:cons ':pattern_height (pattern_height msg))
    (cl:cons ':pattern_size (pattern_size msg))
    (cl:cons ':pattern_type (pattern_type msg))
))
