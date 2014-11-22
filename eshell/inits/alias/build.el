;;; build -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-letf* ((clang-devel "CC=clang-devel CPP=clang-cpp-devel CXX=clang++-devel ")
           (clang35 "CC=clang35 CPP=clang-cpp35 CXX=clang++35 ")
           (gcc "CC=gcc5 CPP=cpp5 CXX=g++5 ")
           (compiler clang35)
           (cflags "-O2 -pipe -fstack-protector -fno-strict-aliasing")
           (build-emacs-configure-options
            (list
             "--prefix=/home/mytoh/huone/ohjelmat/emacs"
             "--disable-acl"
             "--with-sound=oss"
             "--with-x-toolkit=motif"
             ;; "--with-x-toolkit=gtk3"
             ;; "--with-x-toolkit=athena"
             ;; "--with-x-toolkit=athena --without-xaw3d"
             "--with-wide-int"
             "--with-file-notification=gfile"
             ;; "--enable-link-time-optimization"
             "--enable-silent-rules"
             "--without-compress-install"
             "--without-toolkit-scroll-bars"
             compiler
             "MAKE=gmake")))
  (muki:eshell-add-alias "build-emacs"
                         (string-join
                          `("cde; gpl; gmake clean distclean; ./autogen.sh ;"
                            "./configure"
                            ,@build-emacs-configure-options
                            "; gmake && gmake install; gmake clean distclean")
                          " "))
  (muki:eshell-add-alias "build-emacs-bootstrap"
                         (string-join
                          `("cde; gpl; gmake clean distclean; ./autogen.sh ;"
                            "./configure"
                            ,@build-emacs-configure-options
                            "; gmake bootstrap && gmake && gmake install; gmake clean distclean")
                          " ")))
(muki:eshell-add-alias "build-gauche" " cd /home/mytoh/huone/git/github.com/shirok/Gauche && git pull ; ./DIST gen && ./configure --prefix=/home/mytoh/huone/ohjelmat/gauche --enable-tls=axtls --with-local=/usr/local --enable-ipv6 CC=clang-devel CPP=clang-cpp-devel CXX=clang++-devel && gmake all install")
(muki:eshell-add-alias "build-fish" "cd ~/huone/git/github.com/fish-shell/fish-shell ; git pull ; gmake clean distclean ; autoconf ; ./configure --prefix=/home/mytoh/huone/ohjelmat/fish LDFLAGS=-L/usr/local/lib CPPFLAGS=-I/usr/local/include CC=clang-devel CXX=clang++-devel CPP=clang-cpp-devel --with-doxygen ; gmake ; gmake install")
(muki:eshell-add-alias "build-stumpwm" "cd ~/huone/git/github.com/stumpwm/stumpwm ; gmake clean distclean ; ./autogen.sh ; ./configure --prefix=/home/mytoh/huone/ohjelmat/stumpwm && gmake && gmake install")
(muki:eshell-add-alias "build-mksh" "cd ~/huone/git/github.com/MirBSD/mksh && git pull ; env CC=clang-devel sh ./Build.sh -r -c lto ; cp -fv mksh ~/huone/ohjelmat/mksh/bin/mksh ; cp -fv mksh.1 ~/huone/ohjelmat/mksh/share/man/man1/mksh.1")
(muki:eshell-add-alias "build-tmux" "cd ~/huone/git/git.code.sf.net/p/tmux/tmux-code ; git pull ; make clean distclean ; ./autogen.sh ; ./configure --prefix=/home/mytoh/huone/ohjelmat/tmux CC=clang-devel CPP=clang-cpp-devel CXX=clang++-devel && make && make install" )

;;; build.el ends here
