(defun euler1 (upper-limit)
  "Simple loop."
  (loop for x from 1 to upper-limit
        if
            (or
             (= 0 (rem x 5))
             (= 0 (rem x 3))) sum x))

(defun euler1-recursive (x)
  "Recursive version"
  (cond
    ((or
      (= 0 (rem x 5))
      (= 0 (rem x 3)))
       (+ x (euler1-recursive (1- x))))
    ((< x 3 ) 0)
    (t (+ 0 (euler1-recursive (1- x))))))

(print (euler1 999))
(print (euler1-recursive 999))
