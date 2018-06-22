;; iterative exponentiation

(define (pow b n)
  (define (p-iter b n a)
    (cond
     ((= 0 n) a)
     ((even? n) (p-iter (* b b) (/ n 2) a))
     (#t (p-iter b (- n 1) (* b a)))))
  (p-iter b n 1))
