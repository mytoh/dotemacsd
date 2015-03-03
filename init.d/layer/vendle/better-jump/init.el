;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; better-jump
(liby 'better-jump
  (auto (bjump-char-jump-line
         bjump-word-jump
         bjump-word-jump-line
         bjump-word-jump-paragraph
         bjump-window-jump
         bjump-window-delete
         bjump-help-link-jump
         bjump-info-link-jump
         bjump-dired-jump)
        "better-jump"))

;;; init.el ends here
