;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'helm-eww-bookmark
  (auto (helm-eww-bookmark) "helm-eww-bookmark")
  (after 'eww
      (add-key eww-mode-map
        "B" 'helm-eww-bookmark)))

;;; init.el ends here
