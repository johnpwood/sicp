;; describe the behavior of the following procedure:
;; (define (a-plus-abs-b a b)
;;   ((if (> b 0) + -) a b))

;; This should add b when b is positive and subtract b when b is negative.

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 4 5)
(a-plus-abs-b 4 1)
