
;;; shellenv.el
;;; (setenv "PATH" "path:path")
(let ((shellenv (expand-file-name "~/.emacs.d/shellenv.el")))
  (when (file-exists-p shellenv)
      (load-file shellenv)
    (dolist (shpath (reverse (split-string (getenv "PATH") ":")))
      (add-to-list 'exec-path shpath))))



(provide 'config-path)
