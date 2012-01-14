(defun sum-fibonacci (upper-limit)
  (do* ((total 0 (+ total even))
        (first-odd 1 (+ second-odd even))
        (second-odd 1 (+ even first-odd))
        (even 2 (+ first-odd second-odd)))
    ((> even upper-limit) total)))

(defun solution ()
  (sum-fibonacci 4000000))
