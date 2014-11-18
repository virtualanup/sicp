#!/usr/bin/racket
#lang scheme
;; Program to return the sum of square of two larger numbers
(define (sumlarge x y z)
  (cond
   ( (and (< x y) (< x z)) (+ y z))
   ( (and (< y x) (< y z)) (+ x z))
   (else (+ x y))
   )

  )
(define (sumsquare x y z)
  (sumlarge (sqr x) (sqr y) (sqr z))
  )
(sumsquare 10 2 3)
