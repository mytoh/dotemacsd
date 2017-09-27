;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package load-theme-buffer-local
  :commands (load-theme-buffer-local)
  :preface
  (progn
    (cl-defun muki:set-local-buffer (settings)
      (colle:map
       (lambda (s)
         (add-hook (glof:get s :hook)
                   (lambda ()
                     (load-theme-buffer-local
                      (glof:get s :theme)
                      (current-buffer)))))
       settings)))
  :init
  (progn
    (muki:set-local-buffer [(:hook eww-mode-hook
                           :theme darktooth)])
    ;; (add-hook 'eww-mode-hook
    ;;           (lambda () (load-theme-buffer-local
    ;;                  'tao-yin
    ;;                  (current-buffer))))
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
