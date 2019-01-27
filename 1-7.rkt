#lang sicp
(#%require "sicp-library.rkt")

;;; Square Root of a number by approximation
(define (sqrt x)
  (sqrt-iter 1.0 x 0))

(define (sqrt-iter guess x prevguess)
  (if (better-good-enough? guess prevguess)
      guess
      (sqrt-iter (improve guess x) x guess)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

;;; Fails for square root of very small numbers
(define (good-enough? guess x)
  (< (abs(- (square guess) x)) 0.001))

(define (better-good-enough? guess prevguess)
  (< (abs(- guess prevguess)) (/ guess 10000)))
