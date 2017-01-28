;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:


  ;;;; yasnippet
(req 'yasnippet
  (set-option yas-snippet-dirs
              (list (expand-file-name
                     "init.d/snippets"
                     user-emacs-directory)))
  (cl-letf ((sd (expand-file-name
                 "github.com/AndreaCrotti/yasnippet-snippets"
                 hoarder-directory)))
    (when (file-exists-p sd)
      (add-to-list 'yas-snippet-dirs sd)))

;; (yas-reload-all)
;; (add-hook 'prog-mode-hook #'yas-minor-mode)

  (yas-global-mode 1)
)

;;; init.el ends here
