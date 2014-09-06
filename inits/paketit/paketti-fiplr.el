
(req 'fiplr
  (setq fiplr-root-markers '(".git" ".svn"))
  (setq fiplr-ignored-globs '((directories (".git" ".svn"))
                              (files (".jpg" "*.png" "*.zip" "*~"))))
  (muki:global-set-key "C-x f" 'fiplr-find-file))

(provide 'paketti-fiplr)
