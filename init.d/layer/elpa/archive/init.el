;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'package
  (validate-setq package-check-signature nil
                 package-enable-at-startup nil) ;; Prevent double loading of libraries
  (validate-setq package-archives '())
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") 'append)
  (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") 'append)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") 'append)
  ;; (add-to-list 'package-archives '("SC" . "http://joseito.republika.pl/sunrise-commander/") 'append)

  (validate-setq package-archive-priorities
                 '(("org" . 99)))
  )

;;; init.el ends here
