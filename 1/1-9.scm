(define (inc x) (+ x 1))
(define (dec x) (- x 1))

(define (plus a b)
  (if (= a 0)
      b
      (inc (plus (dec a) b))))
;; this procedure is recursive


(define (add a b)
  (if (= a 0)
      b
      (add (dec a) (inc b))))
;; this procedure is iterative.
