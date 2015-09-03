
(when (executable-find "cmigemo")
  (req 'migemo
    (set-option migemo-command "cmigemo")
    (set-option migemo-dictionary (muki:expand-path-huone
                                   "ohjelmat/cmigemo/share/migemo/utf-8"))
    (set-option migemo-options '("-q" "--emacs"))
    (disable-option migemo-user-dictionary)
    (disable-option migemo-regex-dictionary)
    (set-option migemo-coding-system 'utf-8-unix)
    (load-library "migemo")
    (migemo-init)))

(provide 'paketti-migemo)
