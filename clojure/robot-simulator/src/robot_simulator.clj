(ns robot-simulator)

(defn robot [coordinates direction] ;; <- arglist goes here
  {:coordinates coordinates :bearing direction}
)

(defn turn-right [direction] ;; <- arglist goes here
  (case direction
    :north :east
    :east :south
    :south :west
    :north
   ) 
)

(defn turn-left [direction] ;; <- arglist goes here
  (case direction
    :north :west
    :west :south
    :south :east
    :north
    )
)

(defn simulate [instructions bot] ;; <- arglist goes here
  (let [
        letters (clojure.string/split instructions #"")
        ]
    (loop [
           [head & tail] letters 
           currentBot bot
           ]
      (let [
            axis (if (contains? #{:north :south} (:bearing currentBot)) :y :x)
            operation (if (contains? #{:north :east} (:bearing currentBot)) inc dec)
            newBot (case head
                      "R" (assoc currentBot :bearing (turn-right (:bearing currentBot)))
                      "L" (assoc currentBot :bearing (turn-left (:bearing currentBot)))
                      "A" (update-in currentBot [:coordinates axis] operation)
                      "Operation not supported"
                  )
            ]
        (if (nil? tail) newBot (recur tail newBot))
      )
     ) 
    )
)
