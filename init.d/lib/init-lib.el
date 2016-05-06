
;; (add-to-list 'load-path (locate-user-emacs-file "init.d/lib"))
(add-to-list 'load-path (expand-file-name
                         "huone/ateljee/emacs-muki"
                         (getenv "HOME")))
(require 'muki)

(provide 'init-lib)
