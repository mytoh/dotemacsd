;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package perlbrew
  :config
  ;; (perlbrew-switch "perl-blead@dev") ;; initialize perl version to use
  (perlbrew-switch "perl-latest@dev") ;; initialize perl version to use
  )

;;; init.el ends here
