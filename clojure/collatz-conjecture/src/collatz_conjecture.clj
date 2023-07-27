(ns collatz-conjecture)

(defn collatz [num] ;; <- arglist goes here
  (defn helper [num count]
    (cond
      (= 1 num) count
      (even? num) (helper (/ num 2) (inc count))
      :else (helper (+ 1 (* 3 num)) (inc count))
      )
    )
  (helper num 0)
)
