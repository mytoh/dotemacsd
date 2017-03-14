;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package golden-ratio-scroll-screen
  :commands (golden-ratio-scroll-screen-down
             golden-ratio-scroll-screen-up)
  :init
  (progn
    (global-set-key [remap scroll-down-command] 'golden-ratio-scroll-screen-down)
    (global-set-key [remap scroll-up-command] 'golden-ratio-scroll-screen-up)))



;;; init.el ends here
