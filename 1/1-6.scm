;; Alyssa P. Hacker doesn't see why if needs to be provided
;; as a special form.  "Why not define it in terms of cond?"
;; she asks.  Eva Lu Ator defines a new version of if:

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

;; It works for some test cases:

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

;; Alyssa tries to use it for a square root program:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x) x)))

;; What happens when Alyssa tries to use this to compute a square root?

;; A:  The evaluator will keep applying sqrt-iter in the else clause
;; to find out what to apply the procedure new-if to!

