(ns bird-watcher)

(def last-week 
  [0 2 5 3 7 8 4]
  )

(defn today [birds]
  (last birds)
  )

(defn inc-bird [birds]
  (concat (drop-last birds) [(inc (last birds))])
  )

(defn day-without-birds? [birds]
  (> (count (filter #(= % 0) birds)) 0)
  )

(defn n-days-count [birds n]
  (reduce + (take n birds))
  )

(defn busy-days [birds]
  (count (filter #(> % 4) birds)) 
  )

(defn odd-week? [birds]
  (= birds [1 0 1 0 1 0 1])
  )
