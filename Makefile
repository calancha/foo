emacs ?= emacs

LOAD = -l do_not_delete.el

all: test

test:
	$(emacs) -batch $(LOAD) -l test-suite.el -f ert-run-tests-batch-and-exit

compile:
	$(emacs) -batch --eval "(progn (add-to-list 'load-path default-directory) (byte-compile-file \"do_not_delete.el\"))"

clean:
	rm -f *.elc

.PHONY: all compile clean test
