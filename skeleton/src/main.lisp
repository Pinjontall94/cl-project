(defpackage <% @var name %>
  (:use :cl)
  (:export :main))
(in-package :<% @var name %>)

(defun hello (name)
  (format t "This is the start of something great, ~a!~%" name))

(defun help ()
  (format t "~&Usage:

  <% @var name %> [name]~&"))

(defun %main (argv)
  "Parse CLI args."
  (when (member "-h" argv :test #'equal)
    (help)
    (uiop:quit))
  (hello "<% @var name %>"))

(defun main ()
  "Entry point for the executable.
  Reads command line arguments."
  ;; uiop:command-line-arguments returns a list of arguments (sans the script name).
  ;; We defer the work of parsing to %main because we call it also from the Roswell script.
  (%main (uiop:command-line-arguments)))
