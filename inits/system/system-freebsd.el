 ;;; -*- coding: utf-8 -*-
(when (string-equal system-type "berkeley-unix")
  (cl-letf ((my-paths `(,(expand-file-name "~/local/bin" )
                        ,(expand-file-name "~/.lehti/bin" )
                        ,(expand-file-name "~/.loitsu/bin"))))
    (cl-dolist (dir my-paths)
      ;; sakito.jp/emacs/emacsshell.html
      (when (and (file-exists-p dir) (not (member dir exec-path)))
        (setenv "PATH" (concat dir ":" (getenv "PATH")))
        (cl-dolist (p dir)
          (add-to-list 'exec-path p))))))

(provide 'system-freebsd)
