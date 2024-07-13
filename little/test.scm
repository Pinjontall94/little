#!/usr/local/bin/guile -L . -s 
!#

(define-module (little test)
  #:export (tests)
  #:use-module (srfi srfi-64)
  #:use-module ((little app) #:prefix app:))

(define (tests)
  (test-begin "little-app")
  (test-assert (app:atom? 'atom))
  (test-end))
