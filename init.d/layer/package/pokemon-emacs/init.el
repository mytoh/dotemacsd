;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'pokemon-emacs-mode
  (defun muki:pokemon-emacs-message ()
    (let ((filename (or (buffer-file-name) (buffer-name))))
      (message "Gotta pokemon: %s" (pokemon--get filename))))
  (add-hook 'find-file-hook
            #'muki:pokemon-emacs-message))

;;; init.el ends here
