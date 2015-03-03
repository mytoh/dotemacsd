
(req 'google-translate
     ;; (global-set-key "\C-ct" 'google-translate-at-point)
     ;; (global-set-key "\C-cT" 'google-translate-query-translate)

     (cl-letf ((mpv (executable-find "mpv")))
       (when mpv
         (set-option google-translate-listen-program mpv)))

     (setq google-translate-default-source-language "en")
     (setq google-translate-default-target-language "fi")
     )

(provide 'paketti-google-translate)
