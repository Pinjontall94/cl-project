(defsystem "<% @var name %>"
  :version "0.1.0"
  :author "<% @var author %>"
  :license "<% @var license %>"
  :depends-on (<% (format t "~{\"~(~A~)\"~^~%               ~}"
                          (getf env :depends-on)) %>)
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "<% @var description %>"
  <%- @unless without-tests %>
  :in-order-to ((test-op (test-op "<% @var name %>/tests")))
  <%- @endunless %>
  ;; Build a binary:
  ;; don't change this line.
  :build-operation "program-op"
  ;; binary name: adapt.
  :build-pathname "<% @var name %>"
  ;; entry point: here "main" is an exported symbol. Otherwise, use a double ::
  :entry-point "<% @var name %>:main")


(defsystem "<% @var name %>/tests"
  :author "<% @var author %>"
  :license "<% @var license %>"
  :depends-on ("<% @var name %>"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for <% @var name %>"
  :perform (test-op (op c) (symbol-call :rove :run c)))
