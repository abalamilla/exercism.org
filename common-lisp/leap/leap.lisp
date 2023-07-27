(defpackage :leap
  (:use :cl)
  (:export :leap-year-p))
(in-package :leap)

(defun leap-year-p (year)
  (and (= (mod year 4) 0) (or (/= 0 (mod year 100)) (= 0 (mod year 400))))
  )
