
(defface org-block-begin-line
    '((t (:underline "#a7a6aa" :foreground nil  :background "#808ea1")))
  "Face used for the line delimiting the begin of source blocks.")

(defface org-block-background
    '((t (:background "#2b2948")))
  "Face used for the source block background")

(defface org-block-end-line
    '((t (:underline "#a7a6aa" :foreground nil  :background "#808ea1")))
  "Face used for the line delimiting the end of source blocks")

;; give us some hint we are running
(defadvice org-babel-execute-src-block (around progress nil activate)
  (set-face-attribute
   'org-block-background nil :background "LightSteelBlue")
  (message "Running your code block")
  ad-do-it
  (set-face-attribute 'org-block-background nil :background "gray")
  (message "Done with code block"))

(enable-option org-src-fontify-natively)
;; (enable-option org-startup-indented)

(cl-defun muki:org-mode-before-save-hook ()
  (delete-trailing-whitespace)
  (untabify (point-min) (point-max)))

(cl-defun muki:org-startup-options ()
  (setq org-startup-folded 'showall)
  (setq org-descriptive-links nil))

(cl-defun muki:org-html-export-option ()
  (setq org-html-doctype "html5")
  (setq org-html-html5-fancy t)
  (setq org-html-preamble nil)
  (setq org-html-postamble nil))

(cl-defun muki:org-mode-hook-function ()
  (setq mode-name " ꙮ ")
  (setq org-html-postamble nil)
  (setq org-descriptive-links nil)
  (muki:org-startup-options)
  (muki:org-html-export-option)
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
