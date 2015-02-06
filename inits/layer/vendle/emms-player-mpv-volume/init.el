;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'emms-player-mpv-volume
  ;; To use functions in emms-volume.el for mpv
  (set-option emms-volume-change-function #'emms-player-mpv-volume-change))

;;; init.el ends here
