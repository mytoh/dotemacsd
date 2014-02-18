
(when (executable-find "cmigemo")
  (req 'migemo
       (set-option migemo-command "cmigemo")
       (set-option migemo-dictionary "/usr/local/share/cmigemo/utf-8/migemo-dict")
       (set-option migemo-options '("-q" "--emacs"))
       (disable-option migemo-user-dictionary)
       (disable-option migemo-regex-dictionary)
       (set-option migemo-coding-system 'utf-8-unix)
       (load-library "migemo")
       (migemo-init)))

(provide 'paketti-migemo)
