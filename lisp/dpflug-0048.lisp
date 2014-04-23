(defun last-10-digits (n)
  (let ((s (write-to-string n)))
	(subseq s (- (length s) 10) (length s))))

(defun problem-48 ()
  (last-10-digits (loop for i
					 from 1 to 1000
					 sum (expt i i))))

(defun sum-exponential (&optional (n 1) (max 1000) (sum 0))
  "Recursive solution"
  (if (>= n max)
	  sum
	  (sum-exponential (1+ n) max (+ sum (expt n n)))))

(princ (last-10-digits (sum-exponential)))
(terpri)
