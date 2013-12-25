;; emms
(req 'emms-setup
     (when (executable-find "emms-print-metadata")
       (req 'emms-info-libtag
            (add-to-list 'emms-info-functions 'emms-info-libtag)))
     (when (executable-find "mediainfo")
       (req 'emms-info-mediainfo
            (add-to-list 'emms-info-functions 'emms-info-mediainfo)))
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
     (setq emms-source-file-default-directory "~/huone/musiikki")
     (setq emms-repeat-playlist t)
     (setq emms-info-asynchronously t)
     (setq emms-info-auto-update t)
     (req 'emms-player-simple
          ;; mikmod
          (define-emms-simple-player mikmod '(file)
            (regexp-opt '(".669" ".AMF" ".DSM" ".FAR" ".GDM" ".IT" ".IMF"
                          ".MED" ".MTM" ".OKT" ".S3M" ".STM" ".STX" ".ULT"
                          ".APUN" ".XM" ".MOD" ".amf" ".dsm" ".far" ".gdm"
                          ".it" ".imf" ".mod" ".med" ".mtm" ".okt" ".s3m"
                          ".stm" ".stx" ".ult" ".apun" ".xm" ".mod" ".MOD"))
            "mikmod" "-q" "-p" "1" "-X")
          (add-to-list 'emms-player-list 'emms-player-mikmod)
          ;; sox
          (define-emms-simple-player sox
            '(file)
            (regexp-opt '(".flac$" ".mp3" ".ogg"))
            "play" "--volume" "0.2")
          (add-to-list 'emms-player-list 'emms-player-sox)

          ;; mpv
          (define-emms-simple-player mpv
            '(file)
            (concat (regexp-opt '(".mkv" ".wmv" ".mp4" ".flv" ".swf"))
                    "\\'")
            "mpv" "--framedrop=yes" "--softvol" "--really-quiet "  "--use-filename-title" )
          (add-to-list 'emms-player-list 'emms-player-mpv)
          )


     (req 'emms-info)

     ;;;; keymap
     (global-set-key (kbd "C-c m P") 'emms-pause)
     (global-set-key (kbd "C-c m s") 'emms-stop)
     (global-set-key (kbd "C-c m p") 'emms-previous)
     (global-set-key (kbd "C-c m n") 'emms-next)

     )


(provide 'paketti-emms)
