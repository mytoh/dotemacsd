;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package company-plsense
  :config
  ;; (setq company-plsense-executable "~/perl5")
  (add-to-list 'company-backends 'company-plsense)
  (add-hook 'perl-mode-hook 'company-mode)
  (add-hook 'cperl-mode-hook 'company-mode))

;;; init.el ends here
