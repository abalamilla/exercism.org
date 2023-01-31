(ns cars-assemble)

(def production-per-hour 221)

(defn production-rate
  "Returns the assembly line's production rate per hour,
   taking into account its success rate"
  [speed]
  (double
    (cond
      (= 0 speed) 0
      (and (>= speed 1) (<= speed 4)) (* speed production-per-hour)
      (and (>= speed 5) (<= speed 8)) (* 0.9 (* speed production-per-hour))
      (= speed 9) (* 0.8 (* speed production-per-hour))
      (= speed 10) (* 0.77 (* speed production-per-hour))
      ))
  )

(defn working-items
  "Calculates how many working cars are produced per minute"
  [speed]
  (int (Math/floor (/ (production-rate speed) 60)))
  )
