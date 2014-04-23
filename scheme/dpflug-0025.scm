(define problem-25
  (letrec ((memo (list))
		   (fib (lambda (x)
				  (let ((ans (assoc x memo)))
					(if ans
						(cdr ans)
						(let ((new-ans (if (or (= x 1) (= x 2))
										   1
										   (+ (fib (- x 1))
											  (fib (- x 2))))))
						  (begin
							(set! memo (cons (cons x new-ans) memo))
							new-ans))))))
			  (f (lambda (x)
				   (let ((ans-len (string-length (number->string (fib x)))))
					 (if (>= ans-len 1000)
						 x
						 (f (+ 1 x)))))))
	(lambda () (f 1))))

(display (problem-25))
(newline)
