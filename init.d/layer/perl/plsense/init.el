;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

  ;;; Commentary:

;;; Code:

(use-package plsense
 :config
 ;; Key binding
 (setq plsense-popup-help-key "C-:")
 (setq plsense-display-help-buffer-key "M-:")
 (setq plsense-jump-to-definition-key "C->")

 ;; Make config suit for you. About the config item, eval the following sexp.
 ;; (customize-group "plsense")

 ;; Do setting recommemded configuration
 (plsense-config-default)
)


  ;;; init.el ends here
