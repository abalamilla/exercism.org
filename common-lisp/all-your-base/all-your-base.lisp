(defpackage :all-your-base
  (:use :cl)
  (:export :rebase))

(in-package :all-your-base)

(defun to-base-10 (list-digits)


(defun convert (list-digits from to)
  (cond
    (= from to) list-digits 
    (= 10 to) (to-base-10 list-digits)
    )
  )

(defun rebase (list-digits in-base out-base)
  (let (
        base-10 (convert list-digits in-base 10)
        )
    (convert base-10 10 out-base)
    )
  )

