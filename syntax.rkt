#lang sicp

;;; Atomic Values are the Core of all Expressions
1
2

;;; S-EXPRESSION
(+ 1 2)

;;; DEFINE
;; Functions are defined using define
(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (* x  x) (* y y)))

;;; CONDITIONS
;; cond is used to check mulitples statements
(cond ((= 1 2) 1)
      ((> 1 2) 2)
      ((= 1 1) 1))

(if (> 1 2) 1 2)
