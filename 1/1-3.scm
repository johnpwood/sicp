(RESTART 1)
;; Define a procedure that takes three numbers
;; as arguments and returns the sum of the
;; squares of the two larger numbers.

(define (sum-squares a b) (+ (* a a) (* b b)))
(define (sum-of-squares-of-greatest x y z)
  (cond
   ((and (< x y) (< x z)) (sum-squares y z))
   ((< y z) (sum-squares x z))
   ((#t) (sum-squares x y))))

(sum-of-squares-of-greatest 2 3 3)
