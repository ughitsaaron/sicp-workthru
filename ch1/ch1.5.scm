; Ben Bitdiddle has invented a test to determine whether
; the interpreter he is faced with is using applicative-order
; evaluation or normal-order evaluation. He defines the
; following two procedures:

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

; He then evaluates the expression

(test 0 (p))

; etc., etc.

; applicative order the procedure never terminates
; because p would keep evaluating to itself over and over
; using normal-order the procedure would evaluate to 0

