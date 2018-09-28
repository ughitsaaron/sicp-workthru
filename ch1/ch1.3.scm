; Define a procedure that takes three numbers as arguments
; and returns the sum of the squares of the two larger numbers.

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-of-squares-largest x y z)
  (cond
    ((and (>= x z) (>= y z)) (sum-of-squares x y))
    ((and (>= y x) (>= z x)) (sum-of-squares y z))
    ((and (>= z y) (>= z y)) (sum-of-squares z x))))

(sum-of-squares-largest 2 4 6) ; 52
