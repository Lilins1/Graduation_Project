
(cl:in-package :asdf)

(defsystem "pi_car-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "String" :depends-on ("_package_String"))
    (:file "_package_String" :depends-on ("_package"))
  ))