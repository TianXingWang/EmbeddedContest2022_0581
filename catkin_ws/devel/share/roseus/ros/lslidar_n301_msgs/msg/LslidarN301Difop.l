;; Auto-generated. Do not edit!


(when (boundp 'lslidar_n301_msgs::LslidarN301Difop)
  (if (not (find-package "LSLIDAR_N301_MSGS"))
    (make-package "LSLIDAR_N301_MSGS"))
  (shadow 'LslidarN301Difop (find-package "LSLIDAR_N301_MSGS")))
(unless (find-package "LSLIDAR_N301_MSGS::LSLIDARN301DIFOP")
  (make-package "LSLIDAR_N301_MSGS::LSLIDARN301DIFOP"))

(in-package "ROS")
;;//! \htmlinclude LslidarN301Difop.msg.html


(defclass lslidar_n301_msgs::LslidarN301Difop
  :super ros::object
  :slots (_temperature _rpm ))

(defmethod lslidar_n301_msgs::LslidarN301Difop
  (:init
   (&key
    ((:temperature __temperature) 0)
    ((:rpm __rpm) 0)
    )
   (send-super :init)
   (setq _temperature (round __temperature))
   (setq _rpm (round __rpm))
   self)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:rpm
   (&optional __rpm)
   (if __rpm (setq _rpm __rpm)) _rpm)
  (:serialization-length
   ()
   (+
    ;; int64 _temperature
    8
    ;; int64 _rpm
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _temperature
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _temperature (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _temperature) (= (length (_temperature . bv)) 2)) ;; bignum
              (write-long (ash (elt (_temperature . bv) 0) 0) s)
              (write-long (ash (elt (_temperature . bv) 1) -1) s))
             ((and (class _temperature) (= (length (_temperature . bv)) 1)) ;; big1
              (write-long (elt (_temperature . bv) 0) s)
              (write-long (if (>= _temperature 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _temperature s)(write-long (if (>= _temperature 0) 0 #xffffffff) s)))
     ;; int64 _rpm
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rpm (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rpm) (= (length (_rpm . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rpm . bv) 0) 0) s)
              (write-long (ash (elt (_rpm . bv) 1) -1) s))
             ((and (class _rpm) (= (length (_rpm . bv)) 1)) ;; big1
              (write-long (elt (_rpm . bv) 0) s)
              (write-long (if (>= _rpm 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rpm s)(write-long (if (>= _rpm 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _temperature
#+(or :alpha :irix6 :x86_64)
      (setf _temperature (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _temperature (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rpm
#+(or :alpha :irix6 :x86_64)
      (setf _rpm (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rpm (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get lslidar_n301_msgs::LslidarN301Difop :md5sum-) "c9ba6a08f315575f30cfd23b074c07a8")
(setf (get lslidar_n301_msgs::LslidarN301Difop :datatype-) "lslidar_n301_msgs/LslidarN301Difop")
(setf (get lslidar_n301_msgs::LslidarN301Difop :definition-)
      "int64 temperature
int64 rpm

")



(provide :lslidar_n301_msgs/LslidarN301Difop "c9ba6a08f315575f30cfd23b074c07a8")


