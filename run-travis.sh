#!/bin/sh

EMACS=${EMACS:-$(which emacs)}

${EMACS} --version
${EMACS} --batch -Q -l init.el
