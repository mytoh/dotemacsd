;;; init-org.el -*- lexical-binding: t; -*-
(req 'org)

(defface org-block-background
    '((t (:background "#2b2948")))
  "Face used for the source block background")

(cl-defun muki:org-set-faces ()
  (set-face-attribute 'org-block-begin-line nil :background "#202e31")
  (set-face-attribute 'org-block-end-line nil :background "#202e31"))

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
  (disable-option org-startup-truncated)
  (enable-option org-startup-with-inline-images))

(cl-defun muki:org-html-export-options ()
  (set-option org-html-doctype "html5")
  (enable-option org-html-html5-fancy)
  (disable-option org-html-include-timestamps)
  (disable-option org-html-preamble)
  (disable-option org-html-postamble))

(cl-defun muki:org-general-options ()
  (set-option org-directory "~/.org")
  (set-option mode-name " ꙮ ")
  (enable-option org-src-fontify-natively)
  ;; (enable-option org-startup-indented)
  (enable-option org-edit-src-block-indentation)
  (disable-option org-descriptive-links)
  (set-option org-cycle-separator-lines 0)
  (set-option org-use-speed-commands
              (lambda () (and (looking-at org-outline-regexp) (looking-back "^\**"))))
  (set-option org-catch-invisible-edits 'smart)
  (add-to-list 'org-speed-commands-user '("N" org-narrow-to-subtree))
  (add-to-list 'org-speed-commands-user '("W" widen))
  (cl-defun muki:org-speed-command-user-next (arg)
    (interactive "p")
    (outline-next-visible-heading arg)
    (recenter-top-bottom))
  (add-to-list 'org-speed-commands-user
               '("n" org-speed-move-safe 'muki:org-speed-command-user-next))
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
                ("i" "#+include: %file ?")))
  (disable-mode whitespace-mode)
  )

(cl-defun muki:org-babel-options ()
  (disable-option org-confirm-babel-evaluate
                  org-confirm-elisp-link-function
                  org-confirm-shell-link-function)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (shell . t)
     (scheme . t)
     (lisp . t)
     (ditaa . t)
     (dot . t)
     (R . t))))

(cl-defun muki:org-set-modules ()
  (defvar my-org-modules
    '(org-bbdb
      org-gnus
      org-drill
      org-info
      org-habit
      org-irc
      org-mouse
      org-annotate-file
      org-eval
      org-expiry
      org-man
      org-panel
      org-screen
      org-toc
      org-collector
      org-eww
      org-eshell
      ))
  (seq-each (lambda (m) (add-to-list 'org-modules m))
            my-org-modules)
  (when (executable-find "a2ps")
    (add-to-list 'org-modules 'org-checklist))
  (set-option org-modules
              (cl-remove 'org-docview org-modules)))

(cl-defun muki:org-set-face ()
  ;; bigger font for org headlines
  ;; taken from monokai
  ;; [[github.com/oneKelvinSmith/monokai-emacs/]]
  (cl-labels ((if-unspecified (default-face fall-back)
                (pcase (face-attribute default-face :foreground)
                  (`unspecified (face-attribute fall-back :foreground))
                  (_ (face-attribute default-face :foreground))))
              (modify-face-with-height (face height fall-back)
                (set-face-attribute face nil
                                    :inherit 'variable-pitch
                                    :height height
                                    :foreground (if-unspecified face fall-back)))
              (modify-face (face fall-back)
                (set-face-attribute face nil
                                    :inherit 'variable-pitch
                                    :foreground (if-unspecified face fall-back))))
    (modify-face-with-height 'org-level-1 1.3 'font-lock-function-name-face)
    (modify-face-with-height 'org-level-2 1.2 'font-lock-variable-name-face)
    (modify-face-with-height 'org-level-3 1.15 'font-lock-keyword-face)
    (modify-face-with-height 'org-level-4 1.1 'font-lock-comment-face)
    (modify-face 'org-level-5 'font-lock-type-face)
    (modify-face 'org-level-6 'font-lock-constant-face)
    (modify-face 'org-level-7 'font-lock-builtin-face)
    (modify-face 'org-level-8 'font-lock-string-face)
    (set-face-attribute 'org-done nil
                        :weight 'bold)))

(cl-defun muki:org-mode-hook-function ()
  (muki:org-general-options)
  (muki:org-startup-options)
  (muki:org-html-export-options)
  (muki:org-babel-options)
  (muki:org-set-faces)
  (muki:org-set-modules)
  (muki:org-set-face))

(after 'org
    (muki:org-mode-hook-function))

;; (add-hook 'org-mode-hook
;;           'muki:org-mode-hook-function)

(after'org
 ;; Problems while trying to load feature `org-interactive-query'
 ;; Problems while trying to load feature `org-jsinfo'
 (add-hook 'before-save-hook
           'muki:org-mode-before-save-hook))

(cl-defun muki:org-insert-book-drawer ()
  (interactive)
  (insert "\n")
  (seq-each (lambda (s) (insert s)
               (insert "\n"))
            '("   :properties:"
              "   :title: "
              "   :btype: book"
              "   :author: "
              "   :journal: "
              "   :isbn: "
              "   :publisher: "
              "   :year: "
              "   :month: "
              "   :volume: "
              "   :url: "
              "   :end:")))

(add-hook 'org-mode-hook
          (lambda ()
            (add-key org-mode-map
              "C-c o o" 'helm-org-headlines
              "C-c o b" 'muki:org-insert-book-drawer)))

;;;; Viewing, navigating, and editing the Org tree
;;     I often cut and paste subtrees. This makes it easier to cut
;;     something and paste it elsewhere in the hierarchy.
;;     #+begin_src emacs-lisp
(after 'org
    (add-key org-mode-map "C-c k" 'org-cut-subtree)
  (setq org-yank-adjusted-subtrees t))

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

;; [[http://www.wisdomandwonder.com/link/9352/easily-check-src-block-correctness-in-org-mode]]
(defun gcr/src-block-check ()
  (interactive)
  (org-element-map (org-element-parse-buffer 'element) 'src-block
    (lambda (src-block)
      (let ((language (org-element-property :language src-block)))
        (cond ((null language)
               (error "Missing language at position %d"
                      (org-element-property :post-affiliated src-block)))
              ((not (assoc-string language org-babel-load-languages))
               (error "Unknown language at position %d"
                      (org-element-property :post-affiliated src-block)))))))
  (message "Source blocks checked in %s." (buffer-name (buffer-base-buffer))))

(req 'org-bullets
  (cl-defun enable-org-bullets ()
    (org-bullets-mode 1))
  ;; (add-hook 'org-mode-hook 'enable-org-bullets)
  )

(req 'ox-pandoc)
(req 'org-protocol)

(req 'org-eldoc)

(req 'org-hlc)

(add-hook 'org-mode-hook 'turn-off-auto-fill)

(provide 'init-org)

;;; init-org.el ends here