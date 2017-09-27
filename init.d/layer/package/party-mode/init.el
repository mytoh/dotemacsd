;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package party-mode
  :commands (party-mode)
  :init
  ;; (setq party-mode-start-music-fn
  ;;       (lambda ()
  ;;         (start-process "party-music" "*party-music*"
  ;;                        "sox"
  ;;                        (expand-file-name "~/huone/musiikki/perfume/Perfume - Level 3/01. Enter the Spher.mp3"))))
  ;; (setq party-mode-stop-music-fn
  ;;       (lambda () (kill-process "party-music")))
  ;; emmms
  (setq party-mode-start-music-fn
        (lambda () (emms-play-file (expand-file-name "~/huone/musiikki/perfume/Perfume - Level 3/01. Enter the Spher.mp3"))))

  (setq party-mode-stop-music-fn 'emms-stop)
  )

;;; init.el ends here
