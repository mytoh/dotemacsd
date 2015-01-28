;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'helm-eww-history
  (auto (helm-eww-history) "helm-eww-history")
  (after 'eww
      (add-key eww-mode-map
        "H" 'helm-eww-history)))

;;; init.el ends here
