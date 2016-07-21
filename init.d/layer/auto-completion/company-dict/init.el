;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'company-dict

  ;; Where to look for dictionary files. Default is ~/.emacs.d/dict
  (setq company-dict-dir (concat user-emacs-directory "dict/"))

  ;; Optional: if you want it available everywhere
  (add-to-list 'company-backends 'company-dict)

  ;; Optional: evil-mode users may prefer binding this to C-x C-k for vim
  ;; omni-completion-like dictionary completion
  (define-key evil-insert-state-map (kbd "C-x C-k") 'company-dict))

;;; init.el ends here
