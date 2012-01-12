(print
  (eval
    (cons '+ (loop for x from 1 to 999
                   if (or
                        (= 0 (rem x 5))
                        (= 0 (rem x 3))
                      ) collect x))))
