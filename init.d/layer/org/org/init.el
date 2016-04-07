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
  ;; (muki:delete-trailing-whitespace)
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
              (clambda () (and (looking-at org-outline-regexp) (looking-back "^\**"))))
  (set-option org-catch-invisible-edits 'smart)
  (cl-pushnew  '("N" org-narrow-to-subtree) org-speed-commands-user)
  (cl-pushnew  '("W" widen) org-speed-commands-user)
  (cl-defun muki:org-speed-command-user-next (arg)
    (interactive "p")
    (outline-next-visible-heading arg)
    (recenter-top-bottom))
  (cl-pushnew '("n" org-speed-move-safe 'muki:org-speed-command-user-next)
              org-speed-commands-user)
  (set-option org-agenda-files
              '("~/.org/todo.org"))
  (cl-pushnew  '("\\.pdf\\'" . "qpdfview %s")
               org-file-apps)
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
                ("i" "#+include: %file ?")
                ("el" "#+begin_src emacs-lisp\n?\n#+end_src" "<src lang=\"emacs-lisp\">\n?\n</src>")
                ("sh" "#+begin_src sh\n?\n#+end_src" "<src lang=\"shell\">\n?\n</src>")))
  (disable-mode whitespace-mode)
  ;; http://qiita.com/takaxp/items/f583dbf89cc217b0c41c
  ;; this option needed to resize images in org buffer.
  ;; if it's a numebr in list, use #ATTR_* :width setting insteaad if exists
  (setq org-image-actual-width '(256))

  ;; Use a real ellipsis to render an ellipsis for =org= stuff like showing that a
  ;; header is collapsed.

  ;; Other interesting characters are ↴, ⬎, ⮯, 🠷,⤷, and
  ;; "⋱" "…", ▼, 
  (set-option org-ellipsis  " ▼")

  )

(cl-defun muki:org-babel-options ()
  (disable-option org-confirm-babel-evaluate
                  org-confirm-elisp-link-function
                  org-confirm-shell-link-function)
  (org-babel-do-load-languages
   'org-babel-load-languages
   `((emacs-lisp . t)
     ,@(if (locate-library "ob-shell")
           '((shell . t))
         nil)
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
  (seq-each (clambda (m) (cl-pushnew m org-modules))
            my-org-modules)
  (when (executable-find "a2ps")
    (cl-pushnew  'org-checklist org-modules))
  (set-option org-modules
              (cl-remove 'org-docview org-modules)))

(cl-defun muki:org-capture-setting ()
  (setq org-capture-templates
        '(("t" "Todo" entry (file+headline "~/.org/gtd.org" "Tasks")
           "* TODO %?\n  %i\n  %a")
          ("i" "Inbox" entry (file "~/.org/inbox.org")
           "* %?\n%U"))))

(cl-defun muki:org-mode-hook-function ()
  (muki:org-general-options)
  (muki:org-startup-options)
  (muki:org-html-export-options)
  (muki:org-babel-options)
  (muki:org-set-modules)
  (muki:org-capture-setting)
  (add-hook 'org-mode-hook
            (lambda ()
              (add-hook 'before-save-hook
                        #'muki:org-mode-before-save-hook))))

(after 'org
    (muki:org-mode-hook-function))

;; (add-hook 'org-mode-hook
;;           #'muki:org-mode-hook-function)

;; (after'org
;;  ;; Problems while trying to load feature `org-interactive-query'
;;  ;; Problems while trying to load feature `org-jsinfo'
;;  )

(cl-defun muki:org-insert-book-drawer ()
  (interactive)
  (insert "\n")
  ;; http://emacs.stackexchange.com/questions/2869/turn-a-list-or-data-structure-into-an-org-document/
  (insert (org-element-interpret-data
           '((property-drawer nil
              ((node-property (:key "title" :value ""))
               (node-property (:key "btype" :value "book"))
               (node-property (:key "author" :value ""))
               (node-property (:key "journal" :value ""))
               (node-property (:key "isbn" :value ""))
               (node-property (:key "publisher" :value ""))
               (node-property (:key "year" :value ""))
               (node-property (:key "month" :value ""))
               (node-property (:key "volume" :value ""))
               (node-property (:key "url" :value ""))))))))

(add-hook 'org-mode-hook
          (clambda ()
              (add-key org-mode-map
                "C-c o o" #'helm-org-headlines
                "C-c o b" #'muki:org-insert-book-drawer)))

;;;; Viewing, navigating, and editing the Org tree
;;     I often cut and paste subtrees. This makes it easier to cut
;;     something and paste it elsewhere in the hierarchy.
;;     #+begin_src emacs-lisp
(after 'org
    (add-key org-mode-map "C-c k" #'org-cut-subtree)
  (setq org-yank-adjusted-subtrees t))

(add-hook 'org-mode-hook
          (clambda ()
              (local-set-key (kbd "M-n") #'outline-next-visible-heading)
            (local-set-key (kbd "M-p") #'outline-previous-visible-heading)
            (local-set-key (kbd "M-u") #'outline-up-heading)
            ;; table
            (local-set-key (kbd "M-C-w") #'org-table-copy-region)
            (local-set-key (kbd "M-C-y") #'org-table-paste-rectangle)
            (local-set-key (kbd "M-C-l") #'org-table-sort-lines)
            ;; display images
            (local-set-key (kbd "M-I") #'org-toggle-iimage-in-org)))

(add-hook 'org-mode-hook
          #'auto-fill-mode)


(require 'iimage)
(cl-pushnew (cons (concat "\\[\\[file:\\(~?" iimage-mode-image-filename-regex
                          "\\)\\]")  1)
            iimage-mode-image-regex-alist)

(defun org-toggle-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (if (face-underline-p 'org-link)
      (set-face-underline 'org-link nil)
    (set-face-underline 'org-link t))
  (iimage-mode 'toggle))

;; [[https://www.reddit.com/r/orgmode/comments/3mh0w9/how_to_search_through_big_files_on_orgmode/]]
(defun disable-line-number-mode-in-big-files ()
  (if (> (count-words (point-min) (point-max)) 20000)
      (line-number-mode -1)
    (column-number-mode -1)))
(add-hook 'org-mode-hook #'disable-line-number-mode-in-big-files)

;; [[http://www.wisdomandwonder.com/link/9352/easily-check-src-block-correctness-in-org-mode]]
(defun gcr/src-block-check ()
  (interactive)
  (org-element-map (org-element-parse-buffer 'element) 'src-block
    (clambda (src-block)
        (let ((language (org-element-property :language src-block)))
          (cond ((null language)
                 (error "Missing language at position %d"
                        (org-element-property :post-affiliated src-block)))
                ((not (assoc-string language org-babel-load-languages))
                 (error "Unknown language at position %d"
                        (org-element-property :post-affiliated src-block)))))))
  (message "Source blocks checked in %s." (buffer-name (buffer-base-buffer))))

(cl-defun org-find-duplicate-drawers ()
  ;; [[http://lists.gnu.org/archive/html/emacs-orgmode/2015-02/msg00807.html]]
  (interactive)
  (org-element-map (org-element-parse-buffer 'element) 'headline
    (lambda (h)
      (and (org-element-map h 'drawer
             (lambda (d) (equal (org-element-property :name d) "PROPERTIES"))
             nil t 'headline)
           (let ((begin (org-element-property :begin h)))
             (message "Entry with erroneous properties drawer at %d" begin)
             begin)))))

(req 'org-protocol)

;; (req 'org-eldoc)


(add-hook 'org-mode-hook #'turn-off-auto-fill)

(provide 'init-org)

;;; init-org.el ends here
