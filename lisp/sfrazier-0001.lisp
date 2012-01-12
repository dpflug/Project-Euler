(defun gaussian-addition (upper-limit &optional (step-value 1))
  (* step-value (/ (* (floor (/ (decf upper-limit) step-value)) (+ (floor (/ upper-limit step-value)) 1)) 2)))

(defun solution ()
  (- (+ (gaussian-addition 1000 5) (gaussian-addition 1000 3)) (gaussian-addition 1000 15)))
