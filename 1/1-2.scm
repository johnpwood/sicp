;; the following expression is translated from the given traditional expression

(/ (+ 5
      4
      (- 2
	 (- 3
	    (+ 6 (/ 4 5))
	    )))
   (* 3
      (- 6 2)
      (- 2 7)))

;; apparently this evaluates to -37/150...
