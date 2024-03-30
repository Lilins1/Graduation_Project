;; Auto-generated. Do not edit!


(when (boundp 'task::Io)
  (if (not (find-package "TASK"))
    (make-package "TASK"))
  (shadow 'Io (find-package "TASK")))
(unless (find-package "TASK::IO")
  (make-package "TASK::IO"))
(unless (find-package "TASK::IOREQUEST")
  (make-package "TASK::IOREQUEST"))
(unless (find-package "TASK::IORESPONSE")
  (make-package "TASK::IORESPONSE"))

(in-package "ROS")





(defclass task::IoRequest
  :super ros::object
  :slots (_set_state ))

(defmethod task::IoRequest
  (:init
   (&key
    ((:set_state __set_state) nil)
    )
   (send-super :init)
   (setq _set_state __set_state)
   self)
  (:set_state
   (&optional (__set_state :null))
   (if (not (eq __set_state :null)) (setq _set_state __set_state)) _set_state)
  (:serialization-length
   ()
   (+
    ;; bool _set_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set_state
       (if _set_state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set_state
     (setq _set_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass task::IoResponse
  :super ros::object
  :slots (_now_state ))

(defmethod task::IoResponse
  (:init
   (&key
    ((:now_state __now_state) nil)
    )
   (send-super :init)
   (setq _now_state __now_state)
   self)
  (:now_state
   (&optional (__now_state :null))
   (if (not (eq __now_state :null)) (setq _now_state __now_state)) _now_state)
  (:serialization-length
   ()
   (+
    ;; bool _now_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _now_state
       (if _now_state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _now_state
     (setq _now_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass task::Io
  :super ros::object
  :slots ())

(setf (get task::Io :md5sum-) "e485b43c04e16f65a9831427eefda836")
(setf (get task::Io :datatype-) "task/Io")
(setf (get task::Io :request) task::IoRequest)
(setf (get task::Io :response) task::IoResponse)

(defmethod task::IoRequest
  (:response () (instance task::IoResponse :init)))

(setf (get task::IoRequest :md5sum-) "e485b43c04e16f65a9831427eefda836")
(setf (get task::IoRequest :datatype-) "task/IoRequest")
(setf (get task::IoRequest :definition-)
      "bool set_state
---
bool now_state
")

(setf (get task::IoResponse :md5sum-) "e485b43c04e16f65a9831427eefda836")
(setf (get task::IoResponse :datatype-) "task/IoResponse")
(setf (get task::IoResponse :definition-)
      "bool set_state
---
bool now_state
")



(provide :task/Io "e485b43c04e16f65a9831427eefda836")


