;;;; package.lisp

(cl:in-package cl-user)


(defpackage "https://github.com/g000001/srfi-236"
  (:use)
  (:export
   independently))


(defpackage "https://github.com/g000001/srfi-236#internals"
  (:use "CL"
        "ALEXANDRIA"
        "BORDEAUX-THREADS"
        "https://github.com/g000001/srfi-236"))

;;; *EOF*
