#!/usr/bin/racket
#lang scheme
;;; Cube root of a number

(define (square x) (* x x))

(define (cbrt-iter guess prevguess x)
  (if (good-enough? guess prevguess x)
      guess
      (cbrt-iter (improve guess x)
                 guess
                 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3)
  )

(define (good-enough? guess prevguess x)
  (< (abs (- guess prevguess)) 0.000001))

(define (cbrt x)
  (cbrt-iter 1.0 2.0 x))

(cbrt 9)
(cbrt 43553)
