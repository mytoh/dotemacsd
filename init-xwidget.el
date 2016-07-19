;;; init-xwidget -- init-xwidget -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(require 'cl-lib)

(setq ring-bell-function 'ignore)
(setq visible-bell t)

(add-to-list 'load-path (expand-file-name
                         "vendor/github.com/tuhdo/xwidgete"
                         user-emacs-directory))
;; (require 'xwidgete)

(cl-defun my-xwidget-init ()
  (cl-letf* ((url-proxy-services '(("http" . "proxy.koti:3128"))))
    (xwidget-webkit-browse-url (concat "file://"
                                       (expand-file-name
                                        ".org/etusivu/index.html"
                                        (getenv "HOME"))))))

(run-with-timer 5 nil #'delete-other-windows)
(my-xwidget-init)

;;; init-xwidget.el ends here
