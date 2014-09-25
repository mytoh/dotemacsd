

(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))

(after "js3"
    (setq js3-auto-indent-p t)         ; it's nice for commas to right themselves.
  (setq js3-enter-indents-newline t) ; don't need to push tab before typing
  (setq js3-indent-on-enter-key t))   ; fix indenting before moving on

(provide 'paketti-js3)
