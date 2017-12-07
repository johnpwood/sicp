;; Ben Bitdiddle defines these procedures:

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

;;Then evaluates:

(test 0 (p))

(p)


;; What will be the difference in behavior between
;; applicative order and normal order?

;; In either case, the interpreter will try to see what arguments
;; to apply the procedure 'test' to.  This will cause an infinite
;; regress.  Applicative order will keep trying to find what (p) is.
;; Normal order will keep expanding (p) to itself, waiting for a definition
;; in terms of primitive operators.

