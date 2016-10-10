;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'with-editor
  (command (with-editor-finish
            with-editor-cancel
            with-editor-export-editor
            with-editor-export-git-editor
            with-editor-shell-command
            with-editor-async-shell-command)
           "with-editor")
  
  (define-key (current-global-map)
    [remap async-shell-command] #'with-editor-async-shell-command)
  (define-key (current-global-map)
    [remap shell-command] #'with-editor-shell-command)


  (add-hook 'shell-mode-hook  #'with-editor-export-editor)
  (add-hook 'shell-mode-hook  #'with-editor-export-git-editor)
  (add-hook 'term-exec-hook   #'with-editor-export-editor)
  (add-hook 'term-exec-hook   #'with-editor-export-git-editor)
  (add-hook 'eshell-mode-hook #'with-editor-export-editor)
  (add-hook 'eshell-mode-hook #'with-editor-export-git-editor)
  )

;;; init.el ends here
