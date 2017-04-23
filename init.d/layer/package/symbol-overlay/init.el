;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package symbol-overlay
  :commands (symbol-overlay-put
             symbol-overlay-switch-backward
             symbol-overlay-switch-forward)
  :init 
  (progn
    (global-set-key (kbd "M-i") 'symbol-overlay-put)
    (global-set-key (kbd "M-n") 'symbol-overlay-switch-backward)
    (global-set-key (kbd "M-o") 'symbol-overlay-switch-forward)))


;;; init.el ends here
