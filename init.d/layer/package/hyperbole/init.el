;;; nitY -- nitY -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

;; [[http://lists.gnu.org/archive/html/emacs-devel/2016-06/msg00200.html][Subject: Call for testers for GNU Hyperbole 5.12, a large, useful Emacs]]
(after 'package
    (add-to-list 'package-archives '("RSW-Packages" . "http://www.plasmas.biz/rswe/") t)
  (package-initialize)
  (unless (package-installed-p 'hyperbole)
    (if (not (display-graphic-p))
        ;; Installation of Hyperbole requires a non-dumb terminal
        ;; instance of Emacs, i.e. under a window system.
        (progn (message "(Hyperbole): Run Emacs under a window system to install Hyperbole")
               (beep)
               (sit-for 4))
      (package-refresh-contents)
      (package-install 'hyperbole))))

;;; nit.elY ends here
