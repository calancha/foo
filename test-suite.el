(require 'ert)
(require 'do_not_delete)

(ert-deftest test1 ()
  (should (eq 'qux (say-foo))))

(provide 'test-suite)
;;; test-suite.el ends here


