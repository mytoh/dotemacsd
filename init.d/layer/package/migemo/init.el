;;; init-migemo -*- lexical-binding: t -*-

;;; Code:

(liby 'migemo
  (setq migemo-command "cmigemo")
  (setq migemo-options '("-q" "--emacs"))

  ;; Set your installed path
  (setq migemo-dictionary "/usr/local/share/cmigemo/utf-8/migemo-dict")

  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)
  (setq migemo-coding-system 'utf-8-unix)
  (defery 'migemo)
  (after 'migemo
      (migemo-init)))

(provide 'init-migemo)

;;; init-migemo.el ends here
