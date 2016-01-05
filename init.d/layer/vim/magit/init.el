;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(after 'magit
    (add-hook 'with-editor-mode-hook #'evil-normalize-keymaps)

  (bind-map my-leader-with-editor-map
      :evil-keys ("SPC m" ",")
      :evil-states (normal motion)
      :minor-modes (with-editor-mode))
  (bind-map-set-keys my-leader-with-editor-map
      "," #'with-editor-finish
      "a" #'with-editor-cancel
      "c" #'with-editor-finish
      "k" #'with-editor-cancel))

;;; init.el ends here
