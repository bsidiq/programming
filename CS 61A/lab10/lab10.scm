(define (over-or-under num1 num2)
            (cond
                ((< num1 num2) -1)
                ((> num1 num2) 1)
                (else 0)))

(define (make-adder num)
    (lambda (x) (+ x num)))

(define (composed f g)
    (lambda (x) (f(g x))))

(define lst
    (list 
          (list 1)
          2
          (list 3 4)
          5))

(define (remove item lst) 
    (cond ((null? lst) '()) ((equal? item (car lst))
            (remove item (cdr lst)))
            (else (cons (car lst) (remove item (cdr lst))))))