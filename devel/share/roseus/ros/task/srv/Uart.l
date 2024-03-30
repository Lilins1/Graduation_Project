;; Auto-generated. Do not edit!


(when (boundp 'task::Uart)
  (if (not (find-package "TASK"))
    (make-package "TASK"))
  (shadow 'Uart (find-package "TASK")))
(unless (find-package "TASK::UART")
  (make-package "TASK::UART"))
(unless (find-package "TASK::UARTREQUEST")
  (make-package "TASK::UARTREQUEST"))
(unless (find-package "TASK::UARTRESPONSE")
  (make-package "TASK::UARTRESPONSE"))

(in-package "ROS")





(defclass task::UartRequest
  :super ros::object
  :slots (_send ))

(defmethod task::UartRequest
  (:init
   (&key
    ((:send __send) "")
    )
   (send-super :init)
   (setq _send (string __send))
   self)
  (:send
   (&optional __send)
   (if __send (setq _send __send)) _send)
  (:serialization-length
   ()
   (+
    ;; string _send
    4 (length _send)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _send
       (write-long (length _send) s) (princ _send s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _send
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _send (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass task::UartResponse
  :super ros::object
  :slots (_sendmsg ))

(defmethod task::UartResponse
  (:init
   (&key
    ((:sendmsg __sendmsg) "")
    )
   (send-super :init)
   (setq _sendmsg (string __sendmsg))
   self)
  (:sendmsg
   (&optional __sendmsg)
   (if __sendmsg (setq _sendmsg __sendmsg)) _sendmsg)
  (:serialization-length
   ()
   (+
    ;; string _sendmsg
    4 (length _sendmsg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sendmsg
       (write-long (length _sendmsg) s) (princ _sendmsg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sendmsg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sendmsg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass task::Uart
  :super ros::object
  :slots ())

(setf (get task::Uart :md5sum-) "947ef8842683fa73741f136ee7bdbba9")
(setf (get task::Uart :datatype-) "task/Uart")
(setf (get task::Uart :request) task::UartRequest)
(setf (get task::Uart :response) task::UartResponse)

(defmethod task::UartRequest
  (:response () (instance task::UartResponse :init)))

(setf (get task::UartRequest :md5sum-) "947ef8842683fa73741f136ee7bdbba9")
(setf (get task::UartRequest :datatype-) "task/UartRequest")
(setf (get task::UartRequest :definition-)
      "string send
---
string sendmsg
")

(setf (get task::UartResponse :md5sum-) "947ef8842683fa73741f136ee7bdbba9")
(setf (get task::UartResponse :datatype-) "task/UartResponse")
(setf (get task::UartResponse :definition-)
      "string send
---
string sendmsg
")



(provide :task/Uart "947ef8842683fa73741f136ee7bdbba9")


