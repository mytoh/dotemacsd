;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package request
  :init
  (when (executable-find "gnurl")
    (setq request-curl "gnurl")))

;;; init.el ends here
