(ns protein-translation)

(defn get-protein [codon]
  (case codon
    "AUG" "Methionine"
    "UGG" "Tryptophan"
    ("UUU" "UUC") "Phenylalanine"
    ("UUA" "UUG") "Leucine"
    ("UCU" "UCC" "UCA" "UCG") "Serine"
    ("UAU" "UAC") "Tyrosine"
    ("UGU" "UGC") "Cysteine"
    ("UAA" "UAG" "UGA") "STOP"
    )
  )

(defn translate-codon [codon] ;; <- arglist goes here
  (get-protein codon)
)

(defn translate-rna [rna] ;; <- arglist goes here
  (->> rna 
       (partition 3)
       (map #(apply str %))
       (map protein-translation/get-protein)
       (take-while (partial not= "STOP"))
       )
)
