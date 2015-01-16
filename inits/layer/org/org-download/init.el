;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'org-download
  (set-option org-download-backend
              "curl \"%s\" -o \"%s\"")
  (set-option org-download-image-width
              150))

;;; init.el ends here
