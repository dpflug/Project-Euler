(defun string-split (s &optional (delimiter #\ ))
  (loop for i = 0 then (1+ j)
       as j = (position delimiter s :start i)
       collect (subseq s i j)
       while j))

(defun score-word (s &optional (acc 0))
  (if (= 0 (length s))
      acc
      (let ((c (char-code (char s 0))))
	(cond ((and (>= c 97) (<= c 122))
	       (score-word (subseq s 1 (length s))
			   (+ acc (- c 96))))
	      ((and (>= c 65) (<= c 90))
	       (score-word (subseq s 1 (length s))
			   (+ acc (- c 64))))
	      (t (score-word (subseq s 1 (length s))
			     acc))))))

(defun problem-22 ()
  (with-open-file (nf "~/Downloads/names.txt")
    (let ((l (sort (string-split (read-line nf) #\,) #'string-lessp)))
      (loop for i from 0 to (1- (length l))
	   sum (* (1+ i) (score-word (elt l i)))))))

(princ (problem-22))
(terpri)