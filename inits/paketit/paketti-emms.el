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
     (setq emms-lastfm-server "http://turtle.libre.fm/")
     (req 'emms-player-simple

          ;; mikmod
          (define-emms-simple-player mikmod '(file)
            (emms-player-simple-regexp
             "669" "AMF" "DSM" "FAR" "GDM" "IT" "IMF"
             "MED" "MTM" "OKT" "S3M" "STM" "STX" "ULT"
             "APUN" "XM" "MOD" "amf" "dsm" "far" "gdm"
             "it" "imf" "mod" "med" "mtm" "okt" "s3m"
             "stm" "stx" "ult" "apun" "xm" "mod" "MOD")
            "mikmod" "-q" "-p" "1" "-X")
          (add-to-list 'emms-player-list #'emms-player-mikmod)

          ;; sox
          (define-emms-simple-player sox
            '(file)
            (emms-player-simple-regexp "flac" "mp3" "ogg")
            "play" "--volume" "0.2")
          (add-to-list 'emms-player-list #'emms-player-sox)

          ;; mplayer2
          (define-emms-simple-player mplayer2 '(file url)
            (concat "\\`\\(http\\|mms\\)://\\|"
                    (emms-player-simple-regexp
                     "ogg" "mp3" "wav" "mpg" "mpeg" "wmv" "wma"
                     "mov" "avi" "divx" "ogm" "ogv" "asf" "mkv"
                     "rm" "rmvb" "mp4" "flac" "vob" "m4a" "ape"))
            "mplayer" "--slave" "--really-quiet")
          (add-to-list 'emms-player-list #'emms-player-mplayer2)

          (define-emms-simple-player mplayer2-playlist '(streamlist)
            "\\`http://"
            "mplayer" "--slave"  "--really-quiet" )
          (add-to-list 'emms-player-list #'emms-player-mplayer2-playlist)

          ;; mpv
          (define-emms-simple-player mpv
            '(file)
            (emms-player-simple-regexp "mkv" "wmv" "mp4" "flv" "swf")
            "mpv" "--framedrop=yes" "--softvol=auto" "--really-quiet" )
          (add-to-list 'emms-player-list #'emms-player-mpv))

     (defcustom emms-volume-mixer-control "vol"
       "The control to change the volume with.
Controls includes \"Volume\", \"PCM\", etc. For a full list of available
controls, run `mixer' in a shell."
       :type '(choice (const :tag "Volume" "vol")
                      (const :tag "PCM" "pcm")
                      (string :tag "Something else: "))
       :group 'emms-volume)

     (defun emms-volume-mixer-change (amount)
       "Change mixer master volume by AMOUNT."
       (message "Playback channels: %s"
                (with-temp-buffer
                  (when (zerop
                         (call-process "mixer" nil (current-buffer) nil
                                       emms-volume-mixer-control
                                       (format "%s%d"
                                               (if (< amount 0) "-" "+")
                                               (abs amount))))
                    (if (re-search-backward "to \\([0-9]+\\):[0-9]+." nil t)
                        (match-string 1))))))

     (set-option emms-volume-change-function #'emms-volume-mixer-change)

     (req 'emms-info)

     ;;;; keymap
     (global-set-key (kbd "C-c m P") #'emms-pause)
     (global-set-key (kbd "C-c m s") #'emms-stop)
     (global-set-key (kbd "C-c m p") #'emms-previous)
     (global-set-key (kbd "C-c m n") #'emms-next)
     (global-set-key (kbd "C-c m b") #'emms-smart-browse)
     (global-set-key (kbd "C-c m +") #'emms-volume-raise)
     (global-set-key (kbd "C-c m -") #'emms-volume-lower)

     )


(provide 'paketti-emms)
