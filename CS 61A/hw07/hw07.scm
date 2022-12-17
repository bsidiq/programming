(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))

(define (ordered? s)
    (cond 
          ((or (null? s) (null? (cdr s))) #t)
          ((> (car s) (car (cdr s))) #f)
          (else (ordered? (cdr s)))))

(define (square x) (* x x))

(define (pow base exp)
    (cond
        ((= exp 0) 1)
        ((odd? exp) (* base (pow base (- exp 1))))
        (else (square (pow base (quotient exp 2))))))
        
