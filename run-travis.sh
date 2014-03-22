#!/bin/sh

WORK_DIR=$(shell pwd)
PACKAGE_NAME=$(shell basename $(WORK_DIR))
TRAVIS_FILE=.travis.yml

${EMACS} --version
${EMACS} --batch -Q -l init.el
