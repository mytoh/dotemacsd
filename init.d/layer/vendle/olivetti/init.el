;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; olivetti
(liby 'olivetti
  (command (olivetti-mode) "olivetti")
;;; 桁数
  (setq olivetti-body-width 80)           ;桁数
  ;; (setq olivetti-body-width 0.6)          ;(window-width) に対する割合
;;; モードラインを隠す
  (setq olivetti-hide-mode-line t)
  )


;;; init.el ends here
