(define (inc n) (1+ n))
(define (dec n) (-1+ n))

; add recursive
(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))

; (+ 3 5)
; (+ 2 (inc 5))
; (+ 1 (inc (inc 5)))
; (+ 0 (inc (inc (inc 5))))
; (+ 0 (inc (inc 6)))) function shape grows
; (+ 0 (inc 7))))      exponentially
; (+ 0 8)))
; 8

; add iterative
(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))

; (+ 3 5)
; (+ 2 6) constant track of state
; (+ 1 7)
; (+ 0 8)
; 8

; Recursion here is meant to describe the PROCESS
; not the procedure definition. both are defined in
; recursive terms! but one is an interative and the other
; is a recursive *process*
