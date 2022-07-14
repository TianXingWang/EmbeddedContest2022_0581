;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SetMirror)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SetMirror (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SETMIRROR")
  (make-package "ASTRA_CAMERA::SETMIRROR"))
(unless (find-package "ASTRA_CAMERA::SETMIRRORREQUEST")
  (make-package "ASTRA_CAMERA::SETMIRRORREQUEST"))
(unless (find-package "ASTRA_CAMERA::SETMIRRORRESPONSE")
  (make-package "ASTRA_CAMERA::SETMIRRORRESPONSE"))

(in-package "ROS")





(defclass astra_camera::SetMirrorRequest
  :super ros::object
  :slots (_enable ))

(defmethod astra_camera::SetMirrorRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass astra_camera::SetMirrorResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SetMirrorResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass astra_camera::SetMirror
  :super ros::object
  :slots ())

(setf (get astra_camera::SetMirror :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetMirror :datatype-) "astra_camera/SetMirror")
(setf (get astra_camera::SetMirror :request) astra_camera::SetMirrorRequest)
(setf (get astra_camera::SetMirror :response) astra_camera::SetMirrorResponse)

(defmethod astra_camera::SetMirrorRequest
  (:response () (instance astra_camera::SetMirrorResponse :init)))

(setf (get astra_camera::SetMirrorRequest :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetMirrorRequest :datatype-) "astra_camera/SetMirrorRequest")
(setf (get astra_camera::SetMirrorRequest :definition-)
      "bool enable
---
")

(setf (get astra_camera::SetMirrorResponse :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetMirrorResponse :datatype-) "astra_camera/SetMirrorResponse")
(setf (get astra_camera::SetMirrorResponse :definition-)
      "bool enable
---
")



(provide :astra_camera/SetMirror "8c1211af706069c994c06e00eb59ac9e")


