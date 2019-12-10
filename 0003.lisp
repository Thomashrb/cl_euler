;;;;
;;;
;; The prime factors of 13195 are 5, 7, 13 and 29.
;; What is the largest prime factor of the number 600851475143 ?

(defun find-prime-fac (num)
  (let ((factors) (rest num))
    (loop for i below (isqrt 600851475143) when (euler.utils:primep i) do
	 (if (= rest 0)
	     (return factors))
	 (let ((maybe-rest (/ rest i)))
	   (if (integerp maybe-rest)
	       (progn (push i factors) (setf rest maybe-rest))))
       finally (return factors))))

;; Answer
;; 6857
(format t "~a~%" (apply 'max (find-prime-fac 600851475143)))
