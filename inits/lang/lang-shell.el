
;; shell mode recognition
(defun add-shell-mode (ext)
  (add-to-list 'auto-mode-alist `(,(concat "\\." ext "\\'") . sh-mode)))
(add-shell-mode "subr")

(provide 'lang-shell)
