 ;;; -*- coding: utf-8 -*-
(when (string-equal system-type "berkeley-unix")
  (let ((my-paths `(,(expand-file-name "~/local/bin" )
                    ,(expand-file-name "~/.lehti/bin" )
                    ,(expand-file-name "~/.loitsu/bin"))))
    (dolist (dir my-paths)
      ;; sakito.jp/emacs/emacsshell.html
      (when (and (file-exists-p dir) (not (member dir exec-path)))
        (setenv "PATH" (concat dir ":" (getenv "PATH")))
        (dolist (p dir)
          (add-to-list 'exec-path p))))))

(provide 'system-freebsd)
