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
     (setq emms-info-auto-update t)
     (req 'emms-player-simple
          (define-emms-simple-player mikmod '(file)
            (regexp-opt '(".669" ".AMF" ".DSM" ".FAR" ".GDM" ".IT" ".IMF"
                          ".MED" ".MTM" ".OKT" ".S3M" ".STM" ".STX" ".ULT"
                          ".APUN" ".XM" ".MOD" ".amf" ".dsm" ".far" ".gdm"
                          ".it" ".imf" ".mod" ".med" ".mtm" ".okt" ".s3m"
                          ".stm" ".stx" ".ult" ".apun" ".xm" ".mod" ".MOD"))
            "mikmod" "-q" "-p" "1" "-X")
          (add-to-list 'emms-player-list 'emms-player-mikmod))

     )


(provide 'package-emms)
