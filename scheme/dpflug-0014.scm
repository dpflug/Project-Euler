(define (collatz n)
  (cond ((= n 1) 1)
		((even? n) (collatz (/ n 2)))
		(#t (collatz (1+ (* 3 n))))))

(define (counting-collatz n acc)
  (cond ((= n 1) acc)
		((even? n) (counting-collatz (/ n 2) (1+ acc)))
		(#t (counting-collatz (1+ (* 3 n)) (1+ acc)))))

(define (max-collatz-chain-under max)
  (let helper ((cur 1)
			   (res (cons 0 0)))
	(if (= cur max)
		res
		(let ((new (cons cur (counting-collatz cur 1))))
		  (if (< (cdr new) (cdr res))
			  (helper (1+ cur) res)
			  (helper (1+ cur) new))))))

(display (max-collatz-chain-under 1000000))
