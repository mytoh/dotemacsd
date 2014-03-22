#!/usr/bin/env sh

EMACS=${EMACS:-$(which emacs)}

git clone git://github.com/mytoh/dotemacsd /tmp/dotemacsd
ln -sfv /tmp/dotemacsd /home/travis/.emacs.d

${EMACS} --version
${EMACS} --batch --debug-init --load /home/travis/.emacs.d/init.el
