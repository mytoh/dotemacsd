;; -*- lexical-binding : t; coding: utf-8; -*-

(use-package perltidy
  :commands (perltidy-dwim perltidy-buffer perltidy-region)
  :preface
  (progn
    (defun muki:perl/perltidy-buffer-and-recenter ()
      (perltidy-buffer)
      (recenter))
    (defun muki:perl/enable-perltidy-before-save-hook ()
      (add-hook 'before-save-hook #'muki:perl/perltidy-buffer-and-recenter nil 'local)))
  :init
  (when (executable-find "perltidier")
    (setq perltidy-program "perltidier"))
  (after 'cperl-mode
    (add-hook 'cperl-mode-hook;
              #'muki:perl/enable-perltidy-before-save-hook))
  )

;; init.el ends here
