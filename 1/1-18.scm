(define (halve x)
  (/ x 2))
(define (double x)
  (* x 2))

(define (mult a b)
  (define (iter a b c)
    (cond
     ((= 0 b) c)
     ((even? b) (iter (double a) (halve b) c))
     (#t (iter a (- b 1) (+ c a)))
      ))
  (iter a b 0))

