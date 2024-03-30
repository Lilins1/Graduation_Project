;; Auto-generated. Do not edit!


(when (boundp 'pi_car::String)
  (if (not (find-package "PI_CAR"))
    (make-package "PI_CAR"))
  (shadow 'String (find-package "PI_CAR")))
(unless (find-package "PI_CAR::STRING")
  (make-package "PI_CAR::STRING"))
(unless (find-package "PI_CAR::STRINGREQUEST")
  (make-package "PI_CAR::STRINGREQUEST"))
(unless (find-package "PI_CAR::STRINGRESPONSE")
  (make-package "PI_CAR::STRINGRESPONSE"))

(in-package "ROS")





(defclass pi_car::StringRequest
  :super ros::object
  :slots (_input ))

(defmethod pi_car::StringRequest
  (:init
   (&key
    ((:input __input) "")
    )
   (send-super :init)
   (setq _input (string __input))
   self)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:serialization-length
   ()
   (+
    ;; string _input
    4 (length _input)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _input
       (write-long (length _input) s) (princ _input s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _input
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _input (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pi_car::StringResponse
  :super ros::object
  :slots (_output ))

(defmethod pi_car::StringResponse
  (:init
   (&key
    ((:output __output) "")
    )
   (send-super :init)
   (setq _output (string __output))
   self)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:serialization-length
   ()
   (+
    ;; string _output
    4 (length _output)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _output
       (write-long (length _output) s) (princ _output s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _output
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _output (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pi_car::String
  :super ros::object
  :slots ())

(setf (get pi_car::String :md5sum-) "c63e85f503b805d84df783e71c6bb0d2")
(setf (get pi_car::String :datatype-) "pi_car/String")
(setf (get pi_car::String :request) pi_car::StringRequest)
(setf (get pi_car::String :response) pi_car::StringResponse)

(defmethod pi_car::StringRequest
  (:response () (instance pi_car::StringResponse :init)))

(setf (get pi_car::StringRequest :md5sum-) "c63e85f503b805d84df783e71c6bb0d2")
(setf (get pi_car::StringRequest :datatype-) "pi_car/StringRequest")
(setf (get pi_car::StringRequest :definition-)
      "string input
---
string output
")

(setf (get pi_car::StringResponse :md5sum-) "c63e85f503b805d84df783e71c6bb0d2")
(setf (get pi_car::StringResponse :datatype-) "pi_car/StringResponse")
(setf (get pi_car::StringResponse :definition-)
      "string input
---
string output
")



(provide :pi_car/String "c63e85f503b805d84df783e71c6bb0d2")


