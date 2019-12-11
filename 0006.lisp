;;;;
;;;
;; The sum of the squares of the first ten natural numbers is,
;; 12 + 22 + ... + 102 = 385
;; The square of the sum of the first ten natural numbers is,
;; (1 + 2 + ... + 10)2 = 55^2 = 3025
;; Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
;; Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

(defun ^2 (n) (* n n))

(defun sum-squares (until)
  "The sum of the square of all numbers until"
  (apply #'+ (loop for i from 1 to until collect (^2 i))))

(defun sum-squared (until)
  "The sum of all numbers until squared"
  (^2 (apply #'+ (loop for i from 1 to until collect i))))

;; Answer
;; 25164150
(format t "~a~%" (- (sum-squared 100) (sum-squares 100)))
