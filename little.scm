#!/usr/bin/guile \
-L . -e '(@ (little) main)' -s
!#
;; -L .          ->   load all dirs in the $CWD
;; -e '(@ ...)'  ->   set entry point of script to function main in module
;; -s            ->   begin reading scheme source code
(define-module (little)
  #:export (main)
  #:use-module (ice-9 format))

(use-modules ((little test)
	      #:prefix test:))

(define main
  (λ ()
    (display (test:tests))
    (newline)))
