#!/usr/bin/env sh
exec guile -L . -s "$0" "$@"
!#

(define-module (little app)
  #:export (atom?))

(define (atom? a)
  (and (not (pair? a))
       (not (null? a))))
