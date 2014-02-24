 ;;; -*- coding: utf-8 -*-

(when (string-equal system-type "darwin")
  (cl-letf ((my-paths `(,(expand-file-name "~/huone/homebrew/bin"))))
    (cl-dolist (dir my-paths)
      ;; sakito.jp/emacs/emacsshell.html
      (when (and (file-directory-p dir) (not (member dir exec-path)))
        (setenv "PATH" (concat dir ":" (getenv "PATH")))
        (cl-dolist (p dir)
          (add-to-list 'exec-path p)))))
  (define-key global-map (kbd "<s-return>") 'darwin-toggle-fullscreen)
  ;; command to meta
  (setq mac-command-modifier 'meta)
  ;; option to super
  (setq mac-option-modifier 'super)
  ;; function to hyper
  (setq ns-function-modifier 'hyper))

(cl-defun darwin-toggle-fullscreen ()
  "Toggle full scree on darwin"
  (interactive)
  (set-frame-parameter
   nil 'fullscreen
   (when (not (frame-parameter nil 'fullscreen)) 'fullboth)))

(provide 'system-darwin)
