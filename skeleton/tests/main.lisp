(defpackage <% @var name %>/tests/main
  (:use :cl
        :<% @var name %>)
  (:local-nicknames (:rv :rove)
(in-package :<% @var name %>/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :<% @var name %>)' in your Lisp.

(rv:deftest test-target-1
  (rv:testing "should (= 1 1) to be true"
    (rv:ok (= 1 1))))
