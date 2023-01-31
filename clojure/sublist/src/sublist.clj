(ns sublist)

(defn index-of [value col]
  (reduce-kv
    (fn [accum idx current-value] (cond (= current-value value) (reduced idx) :else accum))
    -1
    col)
  )

(defn sublist [list1 list2]
  (let [partitions (into [] (partition (count list1) 1 list2))]
    (if (= -1 (index-of list1 partitions)) false true)
    )
  )

(defn classify [list1 list2] ;; <- arglist goes here
  (cond
    (= list1 list2) :equal
    (sublist list1 list2) :sublist
    (sublist list2 list1) :superlist
    :else :unequal
    )
  )
