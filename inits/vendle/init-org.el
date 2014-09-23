;;; init-org.el -*- lexical-binding: t; -*-

(defface org-block-background
    '((t (:background "#2b2948")))
  "Face used for the source block background")

(cl-defun muki:org-set-faces ()
  (set-face-attribute 'org-block-begin-line nil :background "#303e41")
  (set-face-attribute 'org-block-end-line nil :background "#303e41"))

;; give us some hint we are running
(defadvice org-babel-execute-src-block (around progress nil activate)
  (set-face-attribute
   'org-block-background nil :background "LightSteelBlue")
  (message "Running your code block")
  ad-do-it
  (set-face-attribute 'org-block-background nil :background "gray")
  (message "Done with code block"))


(cl-defun muki:org-mode-before-save-hook ()
  (delete-trailing-whitespace)
  (untabify (point-min) (point-max)))

(cl-defun muki:org-startup-options ()
  (set-option org-startup-folded 'showall)
  (disable-option org-startup-truncated))

(cl-defun muki:org-html-export-options ()
  (set-option org-html-doctype "html5")
  (set-option org-html-html5-fancy t)
  (set-option org-html-preamble nil)
  (set-option org-html-postamble nil))

(cl-defun muki:org-general-options ()
  (set-option org-directory "~/.org")
  (set-option mode-name " ꙮ ")
  (enable-option org-src-fontify-natively)
  ;; (enable-option org-startup-indented)
  (disable-option org-descriptive-links)
  (set-option org-cycle-separator-lines 0)
  (set-option org-agenda-files
              '("~/.org/todo.org"))
  (add-to-list 'org-file-apps '("\\.pdf\\'" . "qpdfview %s"))
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
  (muki:org-babel-options)
  (muki:org-set-faces))

(with-eval-after-load 'org
  (muki:org-mode-hook-function))

;; (add-hook 'org-mode-hook
;;           'muki:org-mode-hook-function)

(with-eval-after-load 'org
  (when (executable-find "a2ps")
    (add-to-list 'org-modules 'org-checklist))
  (add-to-list 'org-modules 'org-collector)
  (add-to-list 'org-modules 'org-panel)
  (add-hook 'before-save-hook
            'muki:org-mode-before-save-hook))

(cl-defun muki:org-insert-book-drawer ()
  (interactive)
  (insert "\n")
  (cl-mapc (lambda (s) (insert s)
                   (insert "\n"))
           '(":properties:"
             ":title: "
             ":btype: book"
             ":author: "
             ":journal: "
             ":isbn: "
             ":publisher: "
             ":year: "
             ":month:  "
             ":volume:  "
             ":url:"
             ":end:")))

(muki:define-key org-mode-map "C-c o o" 'helm-org-headlines)
(muki:define-key org-mode-map "C-c o b" 'muki:org-insert-book-drawer)

(add-hook 'org-mode-hook
          (lambda ()
            (local-set-key (kbd "M-n") 'outline-next-visible-heading)
            (local-set-key (kbd "M-p") 'outline-previous-visible-heading)
            (local-set-key (kbd "M-u") 'outline-up-heading)
            ;; table
            (local-set-key (kbd "M-C-w") 'org-table-copy-region)
            (local-set-key (kbd "M-C-y") 'org-table-paste-rectangle)
            (local-set-key (kbd "M-C-l") 'org-table-sort-lines)
            ;; display images
            (local-set-key (kbd "M-I") 'org-toggle-iimage-in-org)))


(require 'iimage)
(add-to-list 'iimage-mode-image-regex-alist
             (cons (concat "\\[\\[file:\\(~?" iimage-mode-image-filename-regex
                           "\\)\\]")  1))

(defun org-toggle-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (if (face-underline-p 'org-link)
      (set-face-underline 'org-link nil)
    (set-face-underline 'org-link t))
  (iimage-mode 'toggle))

(req 'org-bullets
  (cl-defun enable-org-bullets ()
    (org-bullets-mode 1))
  ;; (add-hook 'org-mode-hook 'enable-org-bullets)
  )

(provide 'init-org)

;;; init-org.el ends here
