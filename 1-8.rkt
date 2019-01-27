#lang sicp
(#%require "sicp-library.rkt")

;;; Square Root of a number by approximation
(define (cubert x)
  (cubert-iter 1.0 x 0))

(define (cubert-iter guess x prevguess)
  (if (better-good-enough? guess prevguess)
      guess
      (cubert-iter (improve guess x) x guess)))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

;;; Fails for square root of very small numbers
(define (good-enough? guess x)
  (< (abs(- (square guess) x)) 0.001))

(define (better-good-enough? guess prevguess)
  (< (abs(- guess prevguess)) (* guess 0.001)))
