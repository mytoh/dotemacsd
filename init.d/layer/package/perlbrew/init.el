;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package perlbrew
  :preface
  (cl-defun muki:perlbrew-get-name ()
    (car (last (split-string (shell-command-to-string "perlbrew switch")))))
  :config
  (perlbrew-switch (muki:perlbrew-get-name))
  ;; (perlbrew-switch "perl-blead@dev") ;; initialize perl version to use
  ;; (perlbrew-switch "perl-latest@dev") ;; initialize perl version to use
  )

;;; init.el ends here
