;; 0   1   0   0   0   0
;; 0   1   1   0   0   0
;; 0   1   2   1   0   0
;; 0   1   3   3   1   0
;; 0   1   4   6   4   1

(define (pascal n k)
  (cond
   ((< n k) 0)
   ((= n k) 1)
   ((= k 0) 1)
   (#t (+ (pascal (- n 1)  (- k 1)) (pascal (- n 1) k)))))

