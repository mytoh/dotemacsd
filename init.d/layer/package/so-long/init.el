;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'so-long
  (add-to-list 'so-long-minor-modes 'rainbow-delimiters-mode)
  (add-to-list 'so-long-minor-modes 'paren-face-mode)
  (add-to-list 'so-long-minor-modes 'electric-indent-mode)
  (add-to-list 'so-long-minor-modes 'electric-pair-mode)
  (add-to-list 'so-long-minor-modes 'electric-layout-mode)
  (add-to-list 'so-long-minor-modes 'idle-highlight-mode)
  (add-to-list 'so-long-minor-modes 'show-paren-mode)
  (add-to-list 'so-long-minor-modes 'git-gutter-mode)
  (so-long-enable))

;;; init.el ends here
