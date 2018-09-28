; Observe that our model of evaluation allows for
; combinations whose operators are compound expressions.
; Use this observation to describe the behavior of the
; following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; a plus the absolute value of b
; if returns either + or - which is then applied to a or b
