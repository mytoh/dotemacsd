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

;; (define-key xwidget-webkit-mode-map
;;     (kbd "C-n") #'xwidget-webkit-scroll-up)
(define-key xwidget-webkit-mode-map
    (kbd "j") #'xwidget-webkit-scroll-up)
(define-key xwidget-webkit-mode-map
    [mouse-4] #'xwidget-webkit-scroll-up)

;; (define-key xwidget-webkit-mode-map
;;     (kbd "C-p") #'xwidget-webkit-scroll-down)
(define-key xwidget-webkit-mode-map
    (kbd "k") #'xwidget-webkit-scroll-down)
(define-key xwidget-webkit-mode-map
    [mouse-5] #'xwidget-webkit-scroll-down)

;;; init-xwidget.el ends here
