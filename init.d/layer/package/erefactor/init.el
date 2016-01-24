;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'erefactor

  (add-hook 'emacs-lisp-mode-hook
            (lambda ()
              (define-key emacs-lisp-mode-map
                  "\C-c\C-v" erefactor-map)))

  ;; And set these variables correctly. erefactor-lint-path-alist',erefactor-lint-by-emacsen'
  ;; Put the following in your .emacs, if you desire highlighting local variable.
  ;; (add-hook 'emacs-lisp-mode-hook 'erefactor-lazy-highlight-turn-on)
  ;; (add-hook 'lisp-interaction-mode-hook 'erefactor-lazy-highlight-turn-on)
  )


;;; init.el ends here
