(ns hamming)

(defn find-diffs 
  [[s1 & rest1] [s2 & rest2] diffs]
  (if (or (nil? s1) (nil? s2))
    diffs
    (find-diffs rest1 
                rest2 
                (if (not= s1 s2) 
                  (inc diffs) 
                  diffs)
                )
    )
  )

(defn distance [strand1 strand2] ; <- arglist goes here
  (if
    (= (count strand1) (count strand2)) 
    (find-diffs strand1 strand2 0)
    )
)
