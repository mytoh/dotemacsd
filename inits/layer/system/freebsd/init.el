 ;;; -*- coding: utf-8 -*-

(when (string-equal system-type "berkeley-unix")
  (cond ((string-equal "fish" (file-name-base (getenv "SHELL")))
         (setenv "SHELL" "/bin/tcsh")
         (setenv "PATH" (shell-command-to-string "tcsh -c 'echo $PATH'"))
         (cl-letf ((my-paths (seq-map #'expand-file-name '(  "~/huone/bin" "~/.config/lehti/bin"
                                                           "~/.config/loitsu/bin"))))
           (seq-doseq (dir my-paths)
             ;; sakito.jp/emacs/emacsshell.html
             (when (and (file-directory-p dir) (not (member dir exec-path)))
               (setenv "PATH" (concat dir ":" (getenv "PATH")))
               (cl-pushnew dir 'exec-path)))))
        (t
         (cl-letf ((my-paths (seq-map #'expand-file-name '(  "~/huone/bin" "~/.config/lehti/bin"
                                                           "~/.config/loitsu/bin"))))
           (seq-doseq (dir my-paths)
             ;; sakito.jp/emacs/emacsshell.html
             (when (and (file-directory-p dir) (not (member dir exec-path)))
               (setenv "PATH" (concat dir ":" (getenv "PATH")))
               (add-to-list 'exec-path dir)))))))
