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

(defun euler1-tail (x &optional (sum 0))
  "Tail-recursive version"
  (cond
    ((< x 3) sum)
    ((or
       (= 0 (rem x 5))
       (= 0 (rem x 3)))
         (euler1-tail (1- x) (+ x sum)))
    (t (euler1-tail (1- x) sum))))

(print (euler1 999))
(print (euler1-recursive 999))
(print (euler1-tail 999))
