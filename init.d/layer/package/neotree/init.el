;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'neotree
  (command (neotree) "neotree")

  (setq neo-window-width 32
        neo-create-file-auto-open t
        neo-banner-message nil
        neo-show-updir-line nil
        neo-mode-line-type 'neotree
        neo-smart-open t
        neo-dont-be-alone t
        neo-persist-show nil
        neo-show-hidden-files t
        neo-auto-indent-point t
        neo-modern-sidebar t
        neo-vc-integration nil)

  (after 'evil
      (evil-define-key 'normal neotree-mode-map
       (kbd "TAB") #'neotree-stretch-toggle
       (kbd "RET") #'neotree-enter
       "|"   #'neotree-enter-vertical-split
       "-"   #'neotree-enter-horizontal-split
       "?"   #'evil-search-backward
       "c"   #'neotree-create-node
       "d"   #'neotree-delete-node
       "gr"  #'neotree-refresh
       ;; (kbd "h")   #'spacemacs/neotree-collapse-or-up
       "H"   #'neotree-select-previous-sibling-node
       "J"   #'neotree-select-down-node
       "K"   #'neotree-select-up-node
       ;; (kbd "l")   #'spacemacs/neotree-expand-or-open
       "L"   #'neotree-select-next-sibling-node
       "q"   #'neotree-hide
       "r"   #'neotree-rename-node
       "R"   #'neotree-change-root
       "s"   #'neotree-hidden-file-toggle))

  (after 'all-the-icons
      (after "neotree"
          (defun neo-buffer--insert-fold-symbol (name &optional file-name)
            "Custom overriding function for the fold symbol.
`NAME' decides what fold icon to use, while `FILE-NAME' decides
what file icon to use."
            (or (and (equal name 'open)  (insert (all-the-icons-icon-for-dir file-name "down")))
               (and (equal name 'close) (insert (all-the-icons-icon-for-dir file-name "right")))
               (and (equal name 'leaf)  (insert (format "\t\t\t%s\t" (all-the-icons-icon-for-file file-name))))))

        (defun neo-buffer--insert-dir-entry (node depth expanded)
          (let ((node-short-name (neo-path--file-short-name node)))
            (insert-char ?\s (* (- depth 1) 2)) ; indent
            (when (memq 'char neo-vc-integration)
              (insert-char ?\s 2))
            (neo-buffer--insert-fold-symbol
             (if expanded 'open 'close) node)
            (insert-button (concat node-short-name "/")
                           'follow-link t
                           'face neo-dir-link-face
                           'neo-full-path node
                           'keymap neotree-dir-button-keymap)
            (neo-buffer--node-list-set nil node)
            (neo-buffer--newline-and-begin)))

        (defun neo-buffer--insert-file-entry (node depth)
          (let ((node-short-name (neo-path--file-short-name node))
                (vc (when neo-vc-integration (neo-vc-for-node node))))
            (insert-char ?\s (* (- depth 1) 2)) ; indent
            (when (memq 'char neo-vc-integration)
              (insert-char (car vc))
              (insert-char ?\s))
            (neo-buffer--insert-fold-symbol 'leaf node-short-name)
            (insert-button node-short-name
                           'follow-link t
                           'face (if (memq 'face neo-vc-integration)
                                     (cdr vc)
                                   neo-file-link-face)
                           'neo-full-path node
                           'keymap neotree-file-button-keymap)
            (neo-buffer--node-list-set nil node)
            (neo-buffer--newline-and-begin))))))


;;; init.el ends here
