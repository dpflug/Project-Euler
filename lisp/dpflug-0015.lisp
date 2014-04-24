(defun pascals_triangle (&optional (size 2))
  (let ((tri (make-array (list size size))))
	(fill-triangle tri)))

(defun sum-neighbors (tri x y)
  (macrolet ((aibp (x y)
			   "Convenience."
			   `(array-in-bounds-p tri ,x ,y)))
	(let ((abov (when (aibp x (1- y))
				  (aref tri x (1- y))))
		  (left (when (aibp (1- x) y)
				  (aref tri (1- x) y))))
	  (if (or (not abov)
			  (not left))
		  (progn (setf (aref tri x y) 1)
				 tri)
		  (progn (setf (aref tri x y) (+ abov left))
				 tri)))))

(defun fill-triangle (tri &optional (x 0) (y 0))
  (let ((newtri (sum-neighbors tri x y)))
	(macrolet ((aibp (x y)
				 `(array-in-bounds-p tri ,x ,y)))
	  (cond ((and (not (aibp (1+ x) y))
				  (not (aibp x (1+ y))))
			 newtri)
			((not (aibp (1+ x) y))
			 (fill-triangle newtri 0 (1+ y)))
			(t (fill-triangle newtri (1+ x) y))))))

; ^^^^^^^ Old 'n busted.
; vvvvvvv New hotness.
(defun factorial (n &optional (acc 1))
  (if (= n 1)
	  acc
	  (factorial (1- n) (* acc n))))

(defun number-of-combinations (n k)
  (/ (factorial n) (* (factorial k) (factorial (- n k)))))

(defun problem-15 ()
  (number-of-combinations (* 20 2) 20))

(princ (problem-15))
(terpri)
