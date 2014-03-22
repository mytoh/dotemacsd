
EMACS_CLEAN=-Q
EMACS_BATCH=$(EMACS_CLEAN) --batch

WORK_DIR=$(shell pwd)
PACKAGE_NAME=$(shell basename $(WORK_DIR))
TRAVIS_FILE=.travis.yml

.PHONY : travis-ci

travis-ci:
	$(EMACS) $(EMACS_BATCH) -l init.el
