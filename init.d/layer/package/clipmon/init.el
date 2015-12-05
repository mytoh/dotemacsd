;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'clipmon
  (command (clipmon-autoinsert-toggle clipmon-mode clipmon-mode-start)
           "clipmon")
  (after 'clipmon
      (setq clipmon-autoinsert-sound t))     ; t for included beep, or path or nil
  )

;;; init.el ends here
