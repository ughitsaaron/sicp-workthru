; factorials

(define (fact-recurs n)
  (if (= n 1)
    1
    (* n (factorial (- n 1)))))

(define (fact-iter prod count max)
  (if (> count max)
    prod
    (fact-iter (* count prod)
               (+ count 1)
               max)))

(define (factorial n)
  (fact-iter 1 1 n))

