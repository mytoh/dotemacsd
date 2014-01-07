;; emms
(req 'emms-setup
     (emms-devel)
     (emms-default-players)
     ;; mode-line
     (emms-mode-line +1)
     (req 'emms-mode-line-icon)
     (setq emms-show-format "NP: %s")
     (setq emms-mode-line-icon-before-format "("
           emms-mode-line-format "%s)"
           emms-mode-line-icon-color "blue")
     ;; playing time
     (emms-playing-time +1)
     (set-option emms-source-file-default-directory "~/huone/musiikki")
     (enable-option emms-repeat-playlist)
     (enable-option emms-info-asynchronously)
     (enable-option emms-info-auto-update)
     (set-option emms-lastfm-server "http://turtle.libre.fm/")
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
          (add-to-list 'emms-player-list 'emms-player-mikmod)

          ;; sox
          (define-emms-simple-player sox
            '(file)
            (emms-player-simple-regexp "flac" "mp3" "ogg")
            "play" "--volume" "0.2")
          (add-to-list 'emms-player-list 'emms-player-sox)

          ;; mplayer2
          (define-emms-simple-player mplayer2 '(file url)
            (cl-concatenate 'string
                            "\\`\\(http\\|mms\\)://\\|"
                            (emms-player-simple-regexp
                             "ogg" "mp3" "wav" "mpg" "mpeg" "wmv" "wma"
                             "mov" "avi" "divx" "ogm" "ogv" "asf" "mkv"
                             "rm" "rmvb" "mp4" "flac" "vob" "m4a" "ape"))
            "mplayer" "--slave" "--really-quiet")
          (add-to-list 'emms-player-list 'emms-player-mplayer2)

          (define-emms-simple-player mplayer2-playlist '(streamlist)
            "\\`http://"
            "mplayer" "--slave"  "--really-quiet" )
          (add-to-list 'emms-player-list 'emms-player-mplayer2-playlist)

          ;; mpv
          (define-emms-simple-player mpv
            '(file)
            (emms-player-simple-regexp "webm" "mkv" "wmv" "mp4" "flv" "swf")
            "mpv" "--framedrop=yes" "--softvol=auto" "--really-quiet")
          (add-to-list 'emms-player-list 'emms-player-mpv))

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

     (set-option emms-volume-change-function 'emms-volume-mixer-change)

     ;;;; info
     (req 'emms-info)
     (when (executable-find "emms-print-metadata")
       (req 'emms-info-libtag
            (setq emms-info-functions '(emms-info-libtag))))
     (when (executable-find "mediainfo")
       (req 'emms-info-mediainfo
            (add-to-list 'emms-info-functions 'emms-info-mediainfo)))
     (when (executable-find "metaflac")
       (req 'emms-info-metaflac
            (add-to-list 'emms-info-functions 'emms-info-metaflac)))



     ;;;; keymap
     (define-prefix-command 'my-emms-map)
     (global-set-key (kbd "C-c m") 'my-emms-map)
     (defun mytoh:define-emms-key (key func)
       "define personal key mappings"
       (define-key my-emms-map key func))
     (mytoh:define-emms-key (kbd "P") 'emms-pause)
     (mytoh:define-emms-key (kbd "s") 'emms-stop)
     (mytoh:define-emms-key (kbd "p") 'emms-previous)
     (mytoh:define-emms-key (kbd "n") 'emms-next)
     (mytoh:define-emms-key (kbd "b") 'emms-smart-browse)
     (mytoh:define-emms-key (kbd "a f") 'emms-add-file)
     (mytoh:define-emms-key (kbd "+") 'emms-volume-raise)
     (mytoh:define-emms-key (kbd "-") 'emms-volume-lower)

     )


(provide 'paketti-emms)
