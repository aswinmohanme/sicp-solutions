#lang sicp
(#%require "sicp-library.rkt")

;;; A function which takes three numbers and returns sum of squares of larger numbers
(define (sum-square-largest-two x y z)
  (cond ((or (<= x y z) (<= x z y)) (sum-of-squares y z))
        ((or (<= y x z) (<= y z x)) (sum-of-squares x z))
        ((or (<= z y x) (<= z x y)) (sum-of-squares y x))))

;; Test the Function
(assert-equal? (sum-square-largest-two 1 2 3) 13)
(assert-equal? (sum-square-largest-two 4 2 3) 25)
(assert-equal? (sum-square-largest-two 4 2 4) 32)
