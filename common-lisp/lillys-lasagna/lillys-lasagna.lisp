(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

(defun expected-time-in-oven () 
  "Define the expected oven time in minutes"
  337
  )

(defun remaining-minutes-in-oven (time-in-oven)
  "Calculate the remaining oven time in minutes"
  (- (expected-time-in-oven) time-in-oven)
  )

(defun preparation-time-in-minutes (layers)
  "Calculate the preparation time in minutes"
  (* 19 layers)
  )

(defun elapsed-time-in-minutes (layers time-in-oven)
  "Calculate the elapsed time in minutes"
  (+ time-in-oven (preparation-time-in-minutes layers))
  )
