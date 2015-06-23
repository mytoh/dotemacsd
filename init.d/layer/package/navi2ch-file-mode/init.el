;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'navi2ch-file-mode
  (setq navi2ch-file-open-with-shift-jis t)
  (modify-coding-system-alist 'file "\\.navi2ch/.*\\.\\(txt\\|dat\\)\\'" 'shift_jis))

;;; init.el ends here
