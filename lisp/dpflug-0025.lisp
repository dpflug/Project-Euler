(defvar memo nil)

(defun fib-memo (x)
  "Memoized fibonacci"
  (let ((ans (assoc x memo)))
	(if ans
		(cdr ans)
		(let ((new-ans (if (or (= x 1) (= x 2))
						   1
						   (+ (fib-memo (- x 1))
							  (fib-memo (- x 2))))))
		  (progn
			(setf memo (cons (cons x new-ans) memo))
			new-ans)))))

(defun problem-25 (&optional (x 1))
  "Find the first fibonacci number with 1000 digits."
  (let ((ans-len (length (write-to-string (fib-memo x)))))
	(if (>= ans-len 1000)
		x
		(problem-25 (1+ x)))))

(princ (problem-25))
(terpri)
