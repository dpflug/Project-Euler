(defun findprime (n)
  (let ((primes nil))
    (do ((i 2 (+ 1 i)))
      ((= n (list-length primes)) (first primes))
      (let ((primeness t))
        (loop for j in primes do
              (when (= 0 (mod i j)) (setf primeness nil)))
        (when primeness (push i primes))))))

