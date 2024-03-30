;; Auto-generated. Do not edit!


(when (boundp 'task::Pwm)
  (if (not (find-package "TASK"))
    (make-package "TASK"))
  (shadow 'Pwm (find-package "TASK")))
(unless (find-package "TASK::PWM")
  (make-package "TASK::PWM"))
(unless (find-package "TASK::PWMREQUEST")
  (make-package "TASK::PWMREQUEST"))
(unless (find-package "TASK::PWMRESPONSE")
  (make-package "TASK::PWMRESPONSE"))

(in-package "ROS")





(defclass task::PwmRequest
  :super ros::object
  :slots (_set_duty ))

(defmethod task::PwmRequest
  (:init
   (&key
    ((:set_duty __set_duty) 0.0)
    )
   (send-super :init)
   (setq _set_duty (float __set_duty))
   self)
  (:set_duty
   (&optional __set_duty)
   (if __set_duty (setq _set_duty __set_duty)) _set_duty)
  (:serialization-length
   ()
   (+
    ;; float32 _set_duty
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _set_duty
       (sys::poke _set_duty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _set_duty
     (setq _set_duty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass task::PwmResponse
  :super ros::object
  :slots (_now_duty ))

(defmethod task::PwmResponse
  (:init
   (&key
    ((:now_duty __now_duty) 0.0)
    )
   (send-super :init)
   (setq _now_duty (float __now_duty))
   self)
  (:now_duty
   (&optional __now_duty)
   (if __now_duty (setq _now_duty __now_duty)) _now_duty)
  (:serialization-length
   ()
   (+
    ;; float32 _now_duty
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _now_duty
       (sys::poke _now_duty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _now_duty
     (setq _now_duty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass task::Pwm
  :super ros::object
  :slots ())

(setf (get task::Pwm :md5sum-) "2cf059adcc761a1dfe88251e9a131afb")
(setf (get task::Pwm :datatype-) "task/Pwm")
(setf (get task::Pwm :request) task::PwmRequest)
(setf (get task::Pwm :response) task::PwmResponse)

(defmethod task::PwmRequest
  (:response () (instance task::PwmResponse :init)))

(setf (get task::PwmRequest :md5sum-) "2cf059adcc761a1dfe88251e9a131afb")
(setf (get task::PwmRequest :datatype-) "task/PwmRequest")
(setf (get task::PwmRequest :definition-)
      "float32 set_duty
---
float32 now_duty
")

(setf (get task::PwmResponse :md5sum-) "2cf059adcc761a1dfe88251e9a131afb")
(setf (get task::PwmResponse :datatype-) "task/PwmResponse")
(setf (get task::PwmResponse :definition-)
      "float32 set_duty
---
float32 now_duty
")



(provide :task/Pwm "2cf059adcc761a1dfe88251e9a131afb")


