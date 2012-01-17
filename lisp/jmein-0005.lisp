(defun divseq (k n)
  (let ((num 1))
    (loop for i from k to n do (setf num (lcm i num)))
    num))
;;;building (lcm (k n))

;(defun factors (n)
 ; (let ((nums nil))
  ;  (do* ((i 1 (+ 1 i)))
   ;   ((> i n) (nreverse nums))
    ;  (when (= 0 (mod n i)) (push i nums)))))
;(defun makefactor (n i)
 ; (if (= 0 (mod n i)) n
  ;  (
