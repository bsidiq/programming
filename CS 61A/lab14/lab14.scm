(define (split-at lst n)
  (define (iter x l i)
    (if (or (null? l) (= i n))
      (cons (reverse x) l)
      (iter (cons (car l) x) (cdr l) (+ i 1))
    )
  )
  (iter () lst 0)
)



(define (compose-all funcs) 
(if (null? funcs)
      (lambda (x) x)
      (lambda (x) ((compose-all (cdr funcs)) ((car funcs) x)))))
