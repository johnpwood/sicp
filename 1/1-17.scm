;; ancient egyptian multiplication method by successive doubling

(define (double x)
  (* 2 x))
(define (halve x)
  (/ x 2))

;; I'm leaving this here as a lesson in not being stupid
;; and costing yourself 5 minutes of confusion:
;; (define (halve x)
;;   (/ 2 x))

(define (fast-mult a b)
  (cond
   ((= b 0) 0)
   ((even? b) (fast-mult (double a) (halve b)))
   (#t (+ a (fast-mult a (- b 1))))))
