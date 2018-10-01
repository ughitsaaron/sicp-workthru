(define (square x) (* x x))

(define (sqrt x)
  (define (average x y)
    (/ (+ x y) 2))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

  (sqrt-iter 1.0 x))

; (sqrt 9)

(define (new-if predicate then else-clase)
  (cond (predicate then)
    (else else-clause)))

; (new-if (= 2 3) 0 5)
; (new-if (= 1 1) 0 5)

; (define (sqrt-iter guess x)
;   (define (average x y)
;     (/ (+ x y) 2))
;   (define (improve guess x)
;     (average guess (/ x guess)))
;   (define (good-enough? guess x)
;     (< (abs (- (square guess) x)) 0.001))
;   (new-if (good-enough? guess x)
;     guess
;     (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; `new-if` uses applicative order evaluation. it evaluates its operator and operands first and applies
; the result to the arguments. this ends us up in an infinite loop when we call new-if in sqrt.

; if is a special form that uses normal order evaluation. it evaluates the predicate before choosing
; to evaluate the else clause. that prevents us from falling into an infinite loop.

