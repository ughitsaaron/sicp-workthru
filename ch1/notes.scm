; from video lecture youtu.be/2Op3QLzMgSY
; computer science: a lousy name. not much science
; more importantly: confusing the tools we use for the field of knowledge
; e.g., geometry: "earth measurements"

; process: how to do something.
; procedures: the steps i that process

; formalizing the how-tos of building large systems
; the way we construct these systems in an understandable
; and manageable way is by "developing techniques for
; controlling complexity" <-- this is what cs is about!

; substitution model
; (define (+ x y)
;   (if (= x 0)
;     y ; if x is zero return y
;     (+ (-1+ x) (1+ y)))) ; otherwise decrement the first operand and increment the second

; (+ 3 4)
; (+ 2 5)
; (+ 1 6)
; (+ 0 7)
; 7
; (LINEAR) ITERATIVE

; (define (+ x y)
;   (if (= x 0)
;     y ; if x is zero return y
;     (1+ (+ (-1+ x) y)))) ; otherwise increment the sum of the decrement of the first operand and the second

; (+ 3 4)
; (+ 2 (1+ 4))
; (+ 1 (1+ (1+ 4)))
; (+ 0 (1+ (1+ (1+ 4))))
; (1+ (1+ 5))
; (1+ 6)
; 7
; (LINEAR) RECURSIVE

(define (fib n)
  (if (< n 2)
    n
    (+ (fib (- n 1))
       (fib (- n 2)))))

(fib 6)

(define (print-move from to)
  (display (string "moving from " from))
  (display (string "\n" "moving to " to "\n")))

; towers of hanoi
(define (move n from to spare)
  (cond ((= n 0) "done")
    (else
      (move (-1+ n) from spare to)
      (print-move from to)
      (move (-1+ n) spare to from))))
