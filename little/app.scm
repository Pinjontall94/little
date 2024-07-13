#!/usr/local/bin/guile -L . -s 
!#

(define-module (little app)
  #:export (atom?))

(define (atom? a)
  (and (not (pair? a))
       (not (null? a))))
