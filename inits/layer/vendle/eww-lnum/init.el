;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'eww-lnum
  (auto (eww-lnum-follow eww-lnum-universal) "eww-lnum")
  (after "eww"
      (define-key eww-mode-map "f" 'eww-lnum-follow)
    (define-key eww-mode-map "F" 'eww-lnum-universal))
  (after "eww-lnum"
      (set-face-attribute 'eww-lnum-number nil
       :foreground "#3355bb")))


;;; init.el ends here
