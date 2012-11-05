(defun count-mult (upper factor1 &optional factor2)
  (if factor2
    (- (+ (count-mult upper factor1) (count-mult upper factor2)) 
       (count-mult upper (lcm factor1 factor2)))
    (/ (* (truncate (/ upper factor1)) 
          (+ (truncate (/ upper factor1)) 1)
          factor1) 2)))

(print (count-mult 999 3 5))
