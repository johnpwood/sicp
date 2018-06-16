(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))))


(define (f-iter n)
  (define (f c n one two three)
    (cond
     ((< n 3) n)
     ((= c n) (+ one (* 2 two) (* 3 three)))
     (#t (f (+ c 1) n (+ one (* 2 two) (* 3 three)) one two))))
  (f 3 n 2 1 0))

