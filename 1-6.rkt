#lang sicp

;(define (sqrt-iter guess x)
;  (new-if (good-enough? guess x)
;          guess
;          (sqrt-iter (improve guess x) x)))

;; Replacing with the new-if would throw it into an infinite loop as the function call would be evaluated first, the sqrt-iter being recursive would never terminate
