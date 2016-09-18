;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'auto-complete-config

  (require 'auto-complete-config)
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/vendor/github.com/auto-complete/auto-complete/dict")
  (validate-setq ac-auto-start 3
                 ac-delay 0.2
                 ac-quick-help-delay 1.0
                 ac-use-fuzzy t
                 ac-fuzzy-enable t
                 ac-dwim t)
  (setq-default ac-sources '(ac-source-abbrev
                             ac-source-dictionary
                             ac-source-words-in-same-mode-buffers))

  (add-to-list 'completion-styles 'initials t)
  (define-key ac-completing-map (kbd "C-j") #'ac-next)
  (define-key ac-completing-map (kbd "C-k") #'ac-previous)
  (define-key ac-completing-map (kbd "<S-tab>") #'ac-previous)

  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  (add-hook 'lisp-interaction-mode-hook 'ac-emacs-lisp-mode-setup)
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t)
  )

;;; init.el ends here
