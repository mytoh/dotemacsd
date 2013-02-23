
(defun flymake-clang-c-init ()
  (let* ((tmp-file (flymake-init-create-temp-buffer-copy
                    'flymake-create-temp-inplace))
         (local-file (file-relative-name
                      tmp-file
                      (file-name-directory buffer-file-name))))
    (list "clang" (list "-fsyntax-only" "-fno-color-diagnostics" local-file) )))

(defun flymake-clang-c-load ()
  (unless (eq buffer-file-name nil)
    (add-to-list 'flymake-allowed-file-name-masks
                 '("\\.c$" flymake-clang-c-init))
    (add-to-list 'flymake-allowed-file-name-masks
                 '("\\.h$" flymake-clang-c-init))
    (flymake-mode t)))


;; (req 'flymake
;;       (add-hook 'c-mode-common-hook
;;                 'flymake-clang-c-load))

(provide 'package-flymake)
