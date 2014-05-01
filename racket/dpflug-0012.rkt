(require math/number-theory)

(define (triangle-number n)
  (/ (* n (+ 1 n)) 2))

(define (problem-12 [cur 44])
  (let* ((tri-num (triangle-number cur))
		 (num-divisors (length (divisors tri-num))))
	(if (> num-divisors 500)
	    tri-num
		(problem-12 (+ 1 cur)))))

(displayln (problem-12))
