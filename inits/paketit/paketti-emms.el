;; emms

(if (file-exists-p "~/.emms")
    (load "~/.emms"))

(req 'emms-setup
     (emms-devel)
     ;; mode-line
     (emms-mode-line +1)
     (req 'emms-mode-line-icon)
     (set-option emms-show-format "NP: %s"
                 emms-mode-line-icon-before-format "("
                 emms-mode-line-format "%s)"
                 emms-mode-line-icon-color "blue")
     ;; playing time
     (emms-playing-time +1)
     (set-option emms-source-file-default-directory "~/huone/musiikki")
     (enable-option emms-repeat-playlist)
     (enable-option emms-info-asynchronously)
     (enable-option emms-info-auto-update)
     (set-option emms-lastfm-server "http://turtle.libre.fm/")
     (set-option emms-browser-info-title-format "%cS%i%n")
     (setq emms-browser-playlist-info-title-format
           emms-browser-info-title-format)


     ;; (emms-default-players)
     (req 'emms-player-simple

          (defvar regexp-file-music-mikmod
            (emms-player-simple-regexp
             "669" "AMF" "DSM" "FAR" "GDM" "IT" "IMF"
             "MED" "MTM" "OKT" "S3M" "STM" "STX" "ULT"
             "APUN" "XM" "MOD" "amf" "dsm" "far" "gdm"
             "it" "imf" "mod" "med" "mtm" "okt" "s3m"
             "stm" "stx" "ult" "apun" "xm" "mod" "MOD"))

          (defvar regexp-file-music-general
            (emms-player-simple-regexp
             "flac" "mp3" "ogg" "wma" "oga" "m4a" "mka"
             "wav"))

          (defvar regexp-file-video
            (emms-player-simple-regexp
             "mpg" "mpeg" "wmv"
             "mov" "avi" "divx" "ogm" "ogv" "asf" "mkv"
             "rm" "rmvb" "mp4"  "vob" "ape" "webm" "flv" "swf"))

          ;; mikmod
          (define-emms-simple-player mikmod '(file)
            regexp-file-music-mikmod
            "mikmod" "-q" "-p" "1" "-X")
          (add-to-list 'emms-player-list 'emms-player-mikmod)

          ;; sox
          (define-emms-simple-player sox
              '(file)
            regexp-file-music-general
            "play" "--volume" "0.5" "--no-show-progress")
          (add-to-list 'emms-player-list 'emms-player-sox)

          ;; mplayer2
          (define-emms-simple-player mplayer2 '(file url)
            (cl-concatenate 'string
                            "\\`\\(http\\|mms\\)://\\|"
                            regexp-file-video)
            "mplayer" "--slave" "--really-quiet")
          (add-to-list 'emms-player-list 'emms-player-mplayer2)

          (define-emms-simple-player mplayer2-playlist '(streamlist)
            "\\`http://\\|"
            "mplayer" "--slave"  "--really-quiet" "--playlist")
          (add-to-list 'emms-player-list 'emms-player-mplayer2-playlist)

          ;; mpv
          (define-emms-simple-player mpv
              '(file)
            regexp-file-video
            "mpv" "--framedrop=yes" "--softvol=auto" "--really-quiet")
          (add-to-list 'emms-player-list 'emms-player-mpv)

          (define-emms-simple-player mpv-playlist-file '(file)
            (emms-player-simple-regexp
             "pls" "m3u")
            "mpv" "--really-quiet" "--playlist")
          (add-to-list 'emms-player-list 'emms-player-mpv-playlist-file)

          )

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
                (with-temp-buffer (when (zerop (call-process "mixer" nil (current-buffer) nil
                                                             emms-volume-mixer-control (format "%s%d"
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
     (define-prefix-command 'muki:emms-map)
     (global-set-key (kbd "C-c m") 'muki:emms-map)
     (defun muki:define-emms-key (key func)
       "define personal key mappings"
       (define-key muki:emms-map key func))
     (muki:define-emms-key (kbd "P") 'emms-pause)
     (muki:define-emms-key (kbd "s") 'emms-stop)
     (muki:define-emms-key (kbd "p") 'emms-previous)
     (muki:define-emms-key (kbd "n") 'emms-next)
     (muki:define-emms-key (kbd "b") 'emms-smart-browse)
     (muki:define-emms-key (kbd "a f") 'emms-add-file)
     (muki:define-emms-key (kbd "a d") 'emms-add-directory-tree)
     (muki:define-emms-key (kbd "+") 'emms-volume-raise)
     (muki:define-emms-key (kbd "-") 'emms-volume-lower)
     )

(cl-defun helm-librefm-stream ()
  (interactive)
  (helm :sources '(helm-source-librefm-stream)
        :buffer "*helm librefm stream *"
        :prompt "Tag: "))

(defvar helm-source-librefm-stream
  `((name . "Librefm")
    (init . helm-librefm-stream-init)
    (candidates . helm-librefm-stream-candidates)
    (action . (("Open Stream" . helm-librefm-stream-action-open)))))

(cl-defun helm-librefm-stream-action-open (candidate)
  (emms-librefm-stream candidate))

(cl-defun helm-librefm-stream-init ()
  (setq helm-librefm-stream-candidates
        (helm-librefm-stream-create-candidates)))

(cl-defun helm-librefm-stream-create-candidates ()
  (cons
   '("Community loved" . "librefm://community/loved")
   (helm-librefm-stream-station-tag
    helm-librefm-stream-global-tags)))

(cl-defun helm-librefm-stream-station-tag (tags)
  (cl-mapcar
   (lambda (tag)
     (cons
      tag
      (cl-concatenate 'string
                      "librefm://globaltags/"
                      tag)))
   tags))

(defvar helm-librefm-stream-global-tags
  '( "Folk"
    "Rock"
    "Metal"
    "Classical"
    "Pop"
    "Blues"
    "Jazz"
    "Punk"
    "Ambient"
    "Electronic"))

(muki:define-emms-key (kbd "l") 'helm-librefm-stream)

(muki:comment
 ;; debug players
 (emms-player-for '(*track* (type . file)
                    (name . "myfile.pls")))
 (emms-player-for '(*track* (type . url)
                    (name . "http://test")))
 (emms-player-for '(*track* (type . file)
                    (name . "test.flac")))
;;; librefm streaming
 ;; ibrefm://globaltags/Classical
 ";; Folk"
 ;; Rock
 ;; Metal
 ;; Classical
 ;; Pop
 ;; Blues
 ;; Jazz
 ;; Punk
 ;; Ambient
 ;; Electronic

 )


(provide 'paketti-emms)
