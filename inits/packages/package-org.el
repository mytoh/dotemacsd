

(defface org-block-begin-line
  '((t (:underline "#a7a6aa" :foreground "#008ed1" :background "#eaeaff")))
  "Face used for the line delimiting the begin of source blocks.")

(defface org-block-background
  '((t (:foreground "#1e3c2b" :background "#bbccea")))
  "Face used for the source block background")

(defface org-block-end-line
  '((t (:overline "#a7a6aa" :foreground "#008ed1" :background "#eaeaff")))
  "Face used for the line delimiting the end of source blocks")

(add-hook 'org-mode-hook
          (lambda ()
            (setq org-src-fontify-natively 1)
            (org-babel-do-load-languages 'org-babel-load-languages
                                         '((emacs-lisp . t) (sh . t) (scheme . t)))))

(provide 'package-org)
