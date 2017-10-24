;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package neotree
  :commands (neotree neotree-toggle)
  :config
  (validate-setq neo-window-width 32
                 neo-create-file-auto-open t
                 neo-banner-message ""
                 neo-show-updir-line nil
                 neo-mode-line-type 'neotree
                 neo-smart-open t
                 neo-show-hidden-files t
                 neo-auto-indent-point t
                 neo-vc-integration nil
                 neo-theme (if window-system 'icons 'arrow))

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

  )


;;; init.el ends here
