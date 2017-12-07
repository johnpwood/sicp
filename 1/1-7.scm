(RESTART 1)

;; The good-enough? test used for square roots in the text will
;; not be very effective for finding the square roots of very
;; small numbers.  Also, in real computers, arithmetic operations
;; are almost always performed with limited precision.  This
;; makes our test inadequate for very large numbers.  Explain these
;; statements, with examples showing how the test fails for small
;; and large numbers.  An alternative strategy for implementing
;; good-enough? is to watch how guess changes from one iteration
;; to the next and to stop when the change is a very small fraction
;; of the guess.  Design a square-root procedure that uses this
;; kind of end test.  Does it work better for small and large numbers?

;; Define square-root according to the text before answering:
(define (square x)
  (* x x))
(define (average x y)
  (/ (+ x y) 2))
(define (improve guess x)
  (average guess (/ x guess)))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
(define (sqrt x)
  (sqrt-iter 1.0 x))

;; A:  for small numbers, the good-enough? test can pass when the
;; guess is many times larger or smaller than the correct answer:

(sqrt .0001) ; gives .0323
(sqrt .0000001) ; gives .03125!!!

;; for large numbers, the precision required is too high for the machine to handle:

(sqrt 1.0e58)

;; The guess is never good enough, when we should
;; be able to get a good approximation.

;; Re-definition:
(define (square x)
  (* x x))
(define (average x y)
  (/ (+ x y) 2))
(define (improve guess x)
  (average guess (/ x guess)))
(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) (* guess 0.001)))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt .000001) ; answer now reasonable
(sqrt 1e58) ; answer now very good.
(sqrt 1e94) ; can still answer this one!!!

