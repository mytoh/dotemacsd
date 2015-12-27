;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'auto-complete-config
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/hoarder/github.com/auto-complete/auto-complete/dict")
  (setq ac-auto-start 0
        ac-delay 0.2
        ac-quick-help-delay 1.
        ac-use-fuzzy t
        ac-fuzzy-enable t
        ac-dwim t)
  (setq-default ac-sources '(ac-source-abbrev
                             ac-source-dictionary
                             ac-source-words-in-same-mode-buffers))

  (add-to-list 'completion-styles 'initials t)
  (define-key ac-completing-map (kbd "C-j") #'ac-next)
  (define-key ac-completing-map (kbd "C-k") #'ac-previous)
  (define-key ac-completing-map (kbd "<S-tab>") #'ac-previous))

;;; init.el ends here
