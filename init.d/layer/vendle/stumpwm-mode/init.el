;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; stumpwm
(liby 'stumpwm-mode
  (auto (stumpwm-mode) "stumpwm-mode")
  (mode ".stumpwmrc.d/conf" 'stumpwm-mode))

;;; init.el ends here
