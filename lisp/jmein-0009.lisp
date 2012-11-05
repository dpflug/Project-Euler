(loop for a from 1 to 1000 do
      (loop for b from a to 1000 do
            (let ((c (- 1000 (+ a b))))
              (when (= (+ (* a a) (* b b)) (* c c)) (print a) (print b)))))
