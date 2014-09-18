;;; init-org.el -*- lexical-binding: t; -*-

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
  (set-option org-startup-folded 'showall))

(cl-defun muki:org-html-export-options ()
  (set-option org-html-doctype "html5")
  (set-option org-html-html5-fancy t)
  (set-option org-html-preamble nil)
  (set-option org-html-postamble nil))

(cl-defun muki:org-general-options ()
  (set-option mode-name " ꙮ ")
  (disable-option org-descriptive-links)
  (set-option org-cycle-separator-lines 0)
  ;; < s TAB
  (set-option org-structure-template-alist
              '(("s" "#+begin_src ?\n\n#+end_src")
                ("e" "#+begin_example\n?\n#+end_example")
                ("q" "#+begin_quote\n?\n#+end_quote")
                ("v" "#+begin_verse\n?\n#+end_verse")
                ("v" "#+begin_verbatim\n?\n#+end_verbatim")
                ("c" "#+begin_center\n?\n#+end_center")
                ("l" "#+begin_latex\n?\n#+end_latex")
                ("l" "#+latex: ")
                ("h" "#+begin_html\n?\n#+end_html")
                ("h" "#+html: ")
                ("a" "#+begin_ascii\n?\n#+end_ascii")
                ("a" "#+ascii: ")
                ("i" "#+index: ?")
                ("i" "#+include: %file ?"))))

(cl-defun muki:org-babel-options ()
  (disable-option org-confirm-babel-evaluate)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (sh . t)
     (scheme . t)
     (lisp . t))))

(cl-defun muki:org-mode-hook-function ()
  (muki:org-general-options)
  (muki:org-startup-options)
  (muki:org-html-export-options)
  (muki:org-babel-options))

(add-hook 'org-mode-hook
          'muki:org-mode-hook-function)

(with-eval-after-load 'org
  (require 'org-bibtex)
  (when (executable-find "a2ps")
    (require 'org-checklist))
  (add-hook 'before-save-hook
            'muki:org-mode-before-save-hook))


(muki:define-key org-mode-map "C-c o o" 'helm-org-headlines)
(muki:define-key org-mode-map "C-c o k" 'muki:insert-org-src-keyword)
(add-hook 'org-mode-hook
          (lambda ()
            (local-set-key (kbd "M-C-n") 'outline-next-visible-heading)
            (local-set-key (kbd "M-C-p") 'outline-previous-visible-heading)
            (local-set-key (kbd "M-C-u") 'outline-up-heading)
            ;; table
            (local-set-key (kbd "M-C-w") 'org-table-copy-region)
            (local-set-key (kbd "M-C-y") 'org-table-paste-rectangle)
            (local-set-key (kbd "M-C-l") 'org-table-sort-lines)
            ;; display images
            (local-set-key (kbd "M-I") 'org-toggle-iimage-in-org)))

(req 'org-bullets
  (cl-defun enable-org-bullets ()
    (org-bullets-mode 1))
  ;; (add-hook 'org-mode-hook 'enable-org-bullets)
  )

(provide 'init-org)

;;; init-org.el ends here
