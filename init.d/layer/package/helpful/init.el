;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package helpful
  :commands (helpful-at-point helpful-symbol)
  :preface
  (defun muki:helpful-at-point ()
    (interactive)
    (helpful-symbol (symbol-at-point)))
  :config
  (after 'shackle
    (setq shackle-rules
          (cons
           '("\*helpful:.*" :regexp t :select t :align below :popup t)
           shackle-rules))))

;;; init.el ends here
