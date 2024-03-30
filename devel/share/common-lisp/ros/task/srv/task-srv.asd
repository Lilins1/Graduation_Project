
(cl:in-package :asdf)

(defsystem "task-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Io" :depends-on ("_package_Io"))
    (:file "_package_Io" :depends-on ("_package"))
    (:file "Pwm" :depends-on ("_package_Pwm"))
    (:file "_package_Pwm" :depends-on ("_package"))
    (:file "Uart" :depends-on ("_package_Uart"))
    (:file "_package_Uart" :depends-on ("_package"))
  ))