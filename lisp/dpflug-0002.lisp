(defun euler2 (max &optional (previous 1) (current 1) (sum 0))
  (cond
    ((> current max) sum)
    ((evenp current) (euler2 max current (+ previous current) (+ sum current)))
    (t (euler2 max current (+ previous current) sum))))


(print (euler2 4000000))
