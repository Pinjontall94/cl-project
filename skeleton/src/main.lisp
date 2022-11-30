(defpackage <% @var name %>
  (:use :cl)
  (:export :main))
(in-package :<% @var name %>)


(defun cli-main (argv)
  (format t "This is the start of something great!"))

(defun main ()
  (cli-main (uiop:command-line-arguments)))
