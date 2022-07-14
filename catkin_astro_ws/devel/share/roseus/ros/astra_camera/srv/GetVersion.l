;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::GetVersion)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'GetVersion (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::GETVERSION")
  (make-package "ASTRA_CAMERA::GETVERSION"))
(unless (find-package "ASTRA_CAMERA::GETVERSIONREQUEST")
  (make-package "ASTRA_CAMERA::GETVERSIONREQUEST"))
(unless (find-package "ASTRA_CAMERA::GETVERSIONRESPONSE")
  (make-package "ASTRA_CAMERA::GETVERSIONRESPONSE"))

(in-package "ROS")





(defclass astra_camera::GetVersionRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::GetVersionRequest
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

(defclass astra_camera::GetVersionResponse
  :super ros::object
  :slots (_version _core_version ))

(defmethod astra_camera::GetVersionResponse
  (:init
   (&key
    ((:version __version) "")
    ((:core_version __core_version) "")
    )
   (send-super :init)
   (setq _version (string __version))
   (setq _core_version (string __core_version))
   self)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:core_version
   (&optional __core_version)
   (if __core_version (setq _core_version __core_version)) _core_version)
  (:serialization-length
   ()
   (+
    ;; string _version
    4 (length _version)
    ;; string _core_version
    4 (length _core_version)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _version
       (write-long (length _version) s) (princ _version s)
     ;; string _core_version
       (write-long (length _core_version) s) (princ _core_version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _core_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _core_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass astra_camera::GetVersion
  :super ros::object
  :slots ())

(setf (get astra_camera::GetVersion :md5sum-) "9dcb65d43afc4a7688056ebe631dc337")
(setf (get astra_camera::GetVersion :datatype-) "astra_camera/GetVersion")
(setf (get astra_camera::GetVersion :request) astra_camera::GetVersionRequest)
(setf (get astra_camera::GetVersion :response) astra_camera::GetVersionResponse)

(defmethod astra_camera::GetVersionRequest
  (:response () (instance astra_camera::GetVersionResponse :init)))

(setf (get astra_camera::GetVersionRequest :md5sum-) "9dcb65d43afc4a7688056ebe631dc337")
(setf (get astra_camera::GetVersionRequest :datatype-) "astra_camera/GetVersionRequest")
(setf (get astra_camera::GetVersionRequest :definition-)
      "---
string version
string core_version
")

(setf (get astra_camera::GetVersionResponse :md5sum-) "9dcb65d43afc4a7688056ebe631dc337")
(setf (get astra_camera::GetVersionResponse :datatype-) "astra_camera/GetVersionResponse")
(setf (get astra_camera::GetVersionResponse :definition-)
      "---
string version
string core_version
")



(provide :astra_camera/GetVersion "9dcb65d43afc4a7688056ebe631dc337")


