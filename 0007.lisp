;;;;
;;;
;; By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
;; What is the 10 001st prime number?

(defun nth-prime (n)
  (let ((count 0))
    (loop for i from 1 when (euler.utils:primep i) do
	 (incf count)
	 (if (= count n)
	     (return i)))))

;; Answer
;; 104743
(format t "~a~%" (nth-prime 10001))
