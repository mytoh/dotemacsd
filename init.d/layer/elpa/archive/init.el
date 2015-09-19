;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'package
  ;; (setq package-archives '())
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") 'append)
  (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") 'append)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") 'append)
  (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") 'append)
  (add-to-list 'package-archives '("SC" . "http://joseito.republika.pl/sunrise-commander/") 'append)
  )

;;; init.el ends here
