;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'evil-textobj-anyblock
  (define-key evil-inner-text-objects-map "b" 'evil-textobj-anyblock-inner-block)
  (define-key evil-outer-text-objects-map "b" 'evil-textobj-anyblock-a-block))


;;; init.el ends here
