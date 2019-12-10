;;;;
;;;
;;2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
;;What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

(defun divisible-1-20 (num)
  (loop for divisor from 1 to 20
     counting (zerop (mod num divisor)) into divcount do
       (if (= divcount 20)
	   (return num))))

(defun find-divisible-1-20 ()
  (loop for num from 200000000 to 300000000 when (divisible-1-20 num) collect num))

;; Answer
;; 232792560
(format t "~a~%" (find-divisible-1-20))
