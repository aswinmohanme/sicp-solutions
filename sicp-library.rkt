#lang racket

;;; Defines common library functions common to exercised
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))

(define (assert-equal? x y) (= x y))

;; Export  all defined Functions
(provide (all-defined-out))
