;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package perlbrew
  :if (executable-find "perlbrew")
  :preface
  (cl-defun muki:perlbrew-get-name ()
    (let* ((perls (mapcar #'split-string
                          (split-string (shell-command-to-string
                                         "perlbrew list")
                                        "\n")))
           (current-perl
            (if (assoc "*" perls)
                (car (cdr (assoc "*" perls)))
              nil)))
      current-perl
      ;; old way
      ;; (car (last (split-string (shell-command-to-string "perlbrew switch"))))
      ))
  :config
  (perlbrew-switch (muki:perlbrew-get-name))
  (after 'flycheck
    (setq flycheck-perl-executable perlbrew-current-perl-path))
  ;; (perlbrew-switch "perl-blead@dev") ;; initialize perl version to use
  ;; (perlbrew-switch "perl-latest@dev") ;; initialize perl version to use
  )

;;; init.el ends here
