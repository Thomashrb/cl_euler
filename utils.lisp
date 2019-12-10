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


;; Makeshift unit testing - from Practical Common Lisp

(defun report-result (result form)
  (format t "~:[FAIL~;pass~] ... ~a~%" result form))

(defmacro assert-true (&body forms)
  "Take an arbitrary list of predicates and assert true"
  `(progn
     ,@(loop for f in forms collect `(report-result ,f ',f))))

(assert-true (= (+ 5 2) 7))
