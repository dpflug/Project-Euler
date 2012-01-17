(defun int->list (n)
  (let ((digits nil)) 
    (loop for i from 1 to (+ 1 (truncate (log n 10))) do
          (progn 
            (push (mod n 10) digits)
            (setf n (truncate (/ n 10)))))
    digits))

(defun prob4 ()
  (let ((big 0))
    (loop for i from 100 to 999 do
          (loop for j from i to 999 do
                (when (and (> (* i j) big) (equal (int->list (* i j)) (nreverse (int->list(* i j)))))
                  (setf big (* i j)))))
    big))
