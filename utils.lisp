;;;; utils.lisp
;;;
(in-package euler.utils)

(defun iinto-list (num)
  "integer to list of digits"
  (map 'list (lambda (c)(or (digit-char-p c) '-)) (prin1-to-string num)))

(defun primep (num)
  (if (> num 1)
      (loop for i from 2 to (isqrt num) do
	   (if (= 0 (mod num i))
	       (return nil))
	 finally (return t)) ;; number is prime
      nil))
