;;;;
;;;
;; If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
;; Find the sum of all the multiples of 3 or 5 below 1000.

(defun multiplep (num &optional)
  "Test if num is multiple of 3 or 5"
  (loop for i in '(3 5) do
       (if (eql 0 (mod num i))
	   (return num))))

(defun find-multiples (&optional (list '(0 1 2 3 4 5 6 7 8 9)))
  "Return elements from-to that are multiples of any ofs"
  (remove-if-not 'multiplep list))

(defparameter *multiples-1000* (find-multiples(loop :for n :below 1000 :collect n)))

;; Test
(euler.utils:assert-true (= 23 (apply #'+ (find-multiples (loop for n below 10 collect n)))))

;; Answer
;; 233168
(format t "~a~%" (apply #'+ *multiples-1000*))
