;; emms
(req 'emms-setup
     (emms-devel)
     (emms-default-players)
     ;; mode-line
     (emms-mode-line 1)
     (setq emms-show-format "NP: %s")
     (setq emms-mode-line-icon-before-format "("
           emms-mode-line-format "%s)"
           emms-mode-line-icon-color "blue")
     ;; playing time
     (emms-playing-time 1)
     (setq emms-source-file-default-directory "~/local/var/musiikki")
     (setq emms-repeat-playlist t)
     (setq emms-info-asynchronously t)
     (setq emms-info-auto-update t))


(provide 'package-emms)
