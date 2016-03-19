;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'per-buffer-theme
  (defery 'per-buffer-theme)
  (after 'per-buffer-theme
      (set-option per-buffer-theme/default-theme
       muki:x-theme)
    (set-option per-buffer-theme/themes-alist
                '(((:theme . notheme)
                   (:buffernames "*eww" "*w3m" "*mu4e")
                   (:modes eww-mode w3m-mode cfw:calendar-mode mu4e-main-mode mu4e-headers-mode mu4e-view-mode mu4e-compose-mode mu4e-about-mode mu4e-update-mode))
                  ((:theme . base16-greenscreen-dark)
                   (:buffernames "*mesh")
                   (:modes eshell-mode))))
    (per-buffer-theme/enable)))

;;; init.el ends here
