;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package cperl-mode
  :commands (cperl-mode)
  :mode
  (("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode)
   ("\\.t\\'" . cperl-mode))
  :interpreter
  (("perl" . cperl-mode)
   ("perl5" . cperl-mode)
   ("miniperl" . cperl-mode)))

;;; init.el ends here
