#!/usr/bin/env sh

EMACS=${EMACS:-$(which emacs)}

install_dotemacsd() {
    git clone git://github.com/mytoh/dotemacsd /tmp/dotemacsd
    ln -sfv /tmp/dotemacsd /home/travis/.emacs.d
}

install_vendle() {
    git clone git://github.com/mytoh/emacs-vendle /home/travis/huone/projektit/emacs-vendle
}

install_dotemacsd
install_vendle

${EMACS} --version
${EMACS} --batch --debug-init --load /home/travis/.emacs.d/init.el
