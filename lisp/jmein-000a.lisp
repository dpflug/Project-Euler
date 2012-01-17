(defun countprime (limit)
  (let ((primes nil) (sum 2))
    (push 2 primes)
    (do ((i 3 (+ 1 i)))
      ((< limit (first primes)) (- sum (first primes)))
      (let ((primeness t))
        (loop for j in primes do
              (when (= 0 (mod i j)) (setf primeness nil)))
        (when primeness (push i primes) (setf sum (+ sum i)))))))
