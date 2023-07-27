(ns log-levels
  (:require [clojure.string :as str]))

(def pattern 
  (re-pattern "\\[(?<level>INFO|WARNING|ERROR)\\]:\\s+(?<message>[a-zA-Z0-9 ]+)")
  )

(defn matcher
  [s]
  (re-matcher pattern s)
  )

(defn re-group
  [s group-name]
  (let [
        matcher (matcher s)
        finds (re-find matcher)
        ]
      (.group matcher group-name)
    )
  )

(defn message
  "Takes a string representing a log line
   and returns its message with whitespace trimmed."
  [s]
  (str/trim (re-group s "message"))
  )

(defn log-level
  "Takes a string representing a log line
   and returns its level in lower-case."
  [s]
  (str/lower-case (re-group s "level"))
  )

(defn reformat
  "Takes a string representing a log line and formats it
   with the message first and the log level in parentheses."
  [s]
  (str (message s) " (" (log-level s) ")")
  )
