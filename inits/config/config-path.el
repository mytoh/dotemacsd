;;; config-path.el  -*- lexical-binding: t -*-
;;; shellenv.el
;;; (setenv "PATH" "path:path")
;; (cl-letf ((shellenv (expand-file-name "~/.emacs.d/shellenv.el")))
;;   (when (file-exists-p shellenv)
;;     (load-file shellenv)
;;     (cl-dolist (shpath (reverse (split-string (getenv "PATH") ":")))
;;       (add-to-list 'exec-path shpath))))

(cl-defun set-exec-path-from-shell-PATH (shell)
  (cl-letf* ((option (if (string-match "tcsh$" shell)
                         "-c" "--login -i -c"))
             (path-from-shell (replace-regexp-in-string
                               "[ \t\n]*$" ""
                               (shell-command-to-string (concat shell " " option " 'echo $PATH'")))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(set-exec-path-from-shell-PATH (getenv "SHELL"))

(provide 'config-path)
