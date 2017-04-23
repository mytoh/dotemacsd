;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package waf-mode
  :init
  (progn
    ;; (setq waf-mode-keymap-prefix (kbd "C-c b"))  ;; Or any other prefix - you prefer. By defaul it will be "C-c ^".
    (add-hook 'python-mode-hook #'waf-conditionally-enable)
    (add-hook 'c++-mode-hook #'waf-conditionally-enable)
    (add-hook 'c-mode-common-hook #'waf-conditionally-enable)))


;;; init.el ends here
