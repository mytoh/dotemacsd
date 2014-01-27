;;; -*- coding: utf-8 -*-
(add-to-list 'load-path (concat user-emacs-directory "inits"))
(require 'init-load)

(add-hook 'after-init-hook
          (lambda ()
            (setq custom-file (locate-user-emacs-file "custom.el"))
            (load (file-name-sans-extension custom-file) t t)))
