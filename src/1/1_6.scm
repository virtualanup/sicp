#!/usr/bin/racket
#lang scheme
;;; Problem number 1.6 of SICP
;;; When the new-if is defined and used instead of if
;;; then, all the parameters are tried to be evaluated as
;;; the new if is a function. It forms infinite loop because
;;; sqrt-iter is called recursively

(define (square x) (* x x))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)
