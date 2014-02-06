
(when (executable-find "cmigemo")
  (req 'migemo
       (setq migemo-command "cmigemo")
       (setq migemo-dictionary "/usr/local/share/cmigemo/utf-8/migemo-dict")
       (setq migemo-options '("-q" "--emacs"))
       (setq migemo-user-dictionary nil)
       (setq migemo-regex-dictionary nil)
       (setq migemo-coding-system 'utf-8-unix)
       (load-library "migemo")
       (migemo-init)))

(provide 'paketti-migemo)
