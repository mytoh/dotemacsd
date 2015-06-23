#!/usr/bin/env sh

EMACS=${EMACS:-$(which emacs)}

install_dotemacsd() {
    git clone git://github.com/mytoh/dotemacsd /tmp/dotemacsd
    ln -sfv /tmp/dotemacsd /home/travis/.emacs.d
}

install_hoarder() {
    git clone git://github.com/mytoh/emacs-hoarder /home/travis/huone/projektit/emacs-hoarder
}

install_dotemacsd
install_hoarder

${EMACS} --version
${EMACS} --batch --debug-init --load /home/travis/.emacs.d/init.el
