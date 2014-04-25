(defun problem-17 ()
  (+ (loop for i
		  from 1 to 1000
		  sum (length (remove #\Space
							  (remove #\-
									  (format nil "~r" i))))) ; Basically cheating. XD
	 (* 3 99 9))) ; Adjusting for British usage. Every hundred 1-99 has "and".

(princ (problem-17))
(terpri)
