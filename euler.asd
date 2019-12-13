;;;; euler.asd
(asdf:defsystem #:euler
  :description "https://projecteuler.net/"
  :author "Thomas"
  :version "0.0.1"
  :serial t
  :components ((:file "package")
               (:file "utils")
               (:file "0001")
               (:file "0002")
               (:file "0003")
               (:file "0004")
               (:file "0005")
               (:file "0006")
               (:file "0007")
               (:file "0008")
               (:file "0009")
               (:file "0010")))
