
(defface org-block-begin-line
    '((t (:underline "#a7a6aa" :foreground "#008ed1" :background nil)))
  "Face used for the line delimiting the begin of source blocks.")

(defface org-block-background
    '((t (:background "#2b2948")))
  "Face used for the source block background")

(defface org-block-end-line
    '((t (:overline "#a7a6aa" :foreground "#008ed1" :background nil)))
  "Face used for the line delimiting the end of source blocks")

(enable-option org-src-fontify-natively)
;; (enable-option org-startup-indented)

(cl-defun muki:org-mode-before-save-hook ()
  (delete-trailing-whitespace)
  (untabify (point-min) (point-max)))

(cl-defun muki:org-mode-hook-function ()
  (setq mode-name " ꙮ ")
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (sh . t)
     (scheme . t)
     (lisp . t)))
  (add-hook 'before-save-hook
            'muki:org-mode-before-save-hook))
(add-hook 'org-mode-hook
          'muki:org-mode-hook-function)





(provide 'init-org)
