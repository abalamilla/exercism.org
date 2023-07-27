(ns interest-is-interesting)

(defn interest-rate
  "Calculate the interest rate"
  [balance]
  (cond
    (< balance 0) -3.213
    (< balance 1000) 0.5
    (and (>= balance 1000) (< balance 5000)) 1.621
    (>= balance 5000) 2.475
    )
  )

(defn annual-balance-update
  "Calculate the annual balance update"
  [balance]
  (* (bigdec balance) (bigdec (+ 1 (/ (abs (interest-rate balance)) 100.0))))
  )

(defn amount-to-donate
  "Calculate how much money to donate"
  [balance tax-free-percentage]
  (if (< balance 0) 0 (int (Math/floor (* 2 (* balance (/ tax-free-percentage 100))))))
  )
