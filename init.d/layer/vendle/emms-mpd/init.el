;;; init-emms-mpd -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;

(req 'emms-setup

  (emms-devel)

  ;; mode-line
  (emms-mode-line +1)
  (req 'emms-mode-line-icon)
  (set-option emms-show-format "NP: %s"
              emms-mode-line-icon-before-format "("
              emms-mode-line-format "%s)"
              emms-mode-line-icon-color "blue")

  (req 'emms-player-mpd

    (enable-mode emms-playing-time)
    (enable-option emms-info-asynchronously)
    (enable-option emms-info-auto-update)
    (set-option emms-browser-info-title-format "%cS%i%n")
    (set-option emms-browser-playlist-info-title-format
                emms-browser-info-title-format)

    ;; Adjust `emms-player-mpd-server-name' and
    ;; `emms-player-mpd-server-port' to match the location and port of
    ;; your MusicPD server.
    ;;
    (setq emms-player-mpd-server-name "localhost")
    (setq emms-player-mpd-server-port "6600")

    ;; To get track info from MusicPD, do the following.
    ;;
    (cl-pushnew 'emms-info-mpd emms-info-functions)

    ;; To change the volume using MusicPD, do the following.
    ;;
    (setq emms-volume-change-function 'emms-volume-mpd-change)

    ;; Add 'emms-player-mpd to the top of `emms-player-list'.

    (cl-pushnew 'emms-player-mpd emms-player-list)

    (enable-option emms-player-mpd-sync-playlist)

       ;;;; keymap
    (define-prefix-command 'muki:emms-map)
    (add-global-key "C-c m" 'muki:emms-map)
    (defun muki:define-emms-key (key func)
      "define personal key mappings"
      (add-key muki:emms-map key func))
    (muki:define-emms-key "P" #'emms-player-mpd-pause)
    (muki:define-emms-key "s" #'emms-player-mpd-stop)
    (muki:define-emms-key "p" #'emms-player-mpd-previous)
    (muki:define-emms-key "n" #'emms-player-mpd-next)
    (muki:define-emms-key "b" #'emms-smart-browse)
    (muki:define-emms-key "a f" #'emms-add-file)
    (muki:define-emms-key "a d" #'emms-add-directory-tree)
    (muki:define-emms-key "+" #'emms-volume-raise)
    (muki:define-emms-key "-" #'emms-volume-lower)


    (emms-player-mpd-connect)

    ))

;;; init-emms-mpd.el ends here
