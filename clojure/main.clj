(def names ["Matt" "Brandy"])
(def factions ["American" "British"])

(let [shuffled_names (shuffle names)
      shuffled_factions (shuffle factions)
      pairs (map vector shuffled_names shuffled_factions)
      ]
  (doseq [pair pairs]
    (print "(")
    (print (clojure.string/join ", " pair))
    (print ")\n")))
