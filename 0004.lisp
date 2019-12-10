;;;;
;;;
;; A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
;; Find the largest palindrome made from the product of two 3-digit numbers.

(defun is-palindromic-number (num)
  (let ((list-num (euler.utils:iinto-list num)))
    (if (equal list-num (reverse list-num))
	t)))

(defvar *3-digit-products*
  (remove-duplicates
   (apply #'append
    (loop for i from 100 to 999 collect
	 (loop for y from 100 to 999
	    collect (* i y))))))

(defvar *3dp-palindromes*
  (remove-if-not 'is-palindromic-number *3-digit-products*))

;; Answer
;; 906609
(format t "~a~%" (apply 'max *3dp-palindromes*))
