;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package load-theme-buffer-local
  :commands (load-theme-buffer-local)
  :init
  (progn
    (add-hook 'eww-mode-hook
              (lambda () (load-theme-buffer-local
                     'tao-yin
                     (current-buffer))))
    (add-hook 'prog-mode-hook
              (lambda ()
                (when buffer-read-only
                  (load-theme-buffer-local
                   'red-october
                   (current-buffer)))))
    (add-hook 'eshell-mode-hook
              (lambda ()
                (when buffer-read-only
                  (load-theme-buffer-local
                   'brin
                   (current-buffer)))))))

;;; init.el ends here
