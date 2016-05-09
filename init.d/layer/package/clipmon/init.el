;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'clipmon
  (command (clipmon-autoinsert-toggle clipmon-mode clipmon-mode-start)
           "clipmon")
  (after 'clipmon
      (enable-option clipmon-autoinsert-sound))     ; t for included beep, or path or nil
  ;; (clipmon-mode-start)
  )

;;; init.el ends here
