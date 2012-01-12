(defun gaussian-addition (upper-limit)
  (loop for x from 1 to upper-limit
        if (or
             (= 0 (rem x 5))
             (= 0 (rem x 3))
           ) sum x))

(print (gaussian-addition 999))
