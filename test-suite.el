(require 'ert)
(require 'do_not_delete)

(ert-deftest test1 ()
  (should (eq 'foo (say-foo))))

