

(req 'helm-dictionary
     (setq helm-dictionary-database (expand-file-name "dict/en-fi.ding"
                                                      user-emacs-directory)))

(provide 'paketti-helm-dictionary)
