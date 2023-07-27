(ns yacht)

(defn count-single [num results]
  (->> results (filter #(= num %)) count (* num))
  )

(defn freq [is times results]
  (or (->> results frequencies (filter #(is (val %) times)) first) [0 0])
  )

(defn full-house-rule [results]
  ((juxt (partial freq = 3) (partial freq = 2)) results)
  )

(defn full-house-sum [r]
  (if (every? pos? (flatten r))
    (->> r
       (map (fn [r] (apply * r)))
       (reduce +)
       )
    0
    )
  )

(def rules
  {
   "ones" #(count-single 1 %)
   "twos" #(count-single 2 %)
   "threes" #(count-single 3 %)
   "fours" #(count-single 4 %)
   "fives" #(count-single 5 %)
   "sixes" #(count-single 6 %)
   "full house" #(->> % full-house-rule full-house-sum)
   "four of a kind" #(->> % (freq >= 4) first (* 4))
   "little straight" #(if (= (range 1 6) (sort %)) 30 0)
   "big straight" #(if (= (range 2 7) (sort %)) 30 0)
   "choice" #(reduce + %)
   "yacht" #(if (->> % (freq = 5) first (< 0)) 50 0)
   }
  )

(defn score [results category]
  ((rules category) results)
  )
