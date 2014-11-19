#!/usr/bin/racket
#lang scheme
;;; the function is much more precise in this case
(define (square x) (* x x))

(define (sqrt-iter guess prevguess x)
  (if (good-enough? guess prevguess x)
      guess
      (sqrt-iter (improve guess x)
                 guess
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prevguess x)
  (< (abs (- guess prevguess)) 0.000001))

(define (sqrt x)
  (sqrt-iter 1.0 2.0 x))

(sqrt 9)
(sqrt 43553)
