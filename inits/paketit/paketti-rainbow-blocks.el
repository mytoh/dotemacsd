;;; paketti-rainbow-blocks.el -*- lexical-binding: t -*-

(pak 'rainbow-blocks
     (add-hook 'scheme-mode-hook       'rainbow-blocks-mode)
     (add-hook 'lisp-mode-hook         'rainbow-blocks-mode)
     (add-hook 'emacs-lisp-mode-hook   'rainbow-blocks-mode)
     (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
     (with-eval-after-load "rainbow-blocks"
       (set-face-attribute 'rainbow-blocks-depth-1-face nil :inherit 'font-lock-builtin-face)
       (set-face-attribute 'rainbow-blocks-depth-2-face nil :foreground "dodger blue")
       (set-face-attribute 'rainbow-blocks-depth-3-face nil :foreground "orange")
       (set-face-attribute 'rainbow-blocks-depth-4-face nil :foreground "RoyalBlue3")
       (set-face-attribute 'rainbow-blocks-depth-5-face nil :foreground "darkgreen")
       (set-face-attribute 'rainbow-blocks-depth-6-face nil :foreground "brown")
       (set-face-attribute 'rainbow-blocks-depth-7-face nil :foreground "purple")
       (set-face-attribute 'rainbow-blocks-depth-8-face nil :foreground "khaki")
       (set-face-attribute 'rainbow-blocks-depth-9-face nil :foreground "salmon"))
     '(aaaaaa
       (aaaa
        (aaaaaa
         (aaaaaa
          (aaaaa
           (aaaaaaaaaaa
            (aaaaaaaaaaa
             (aaaaaaaaa
              (aaaaaa
               (aaaaaa
                (aaaaaaaa
                 (aaaaaaaaa
                  ((((((((((((((((((((()))))))))))))))))))))))))))))))))
     )

(provide 'paketti-rainbow-blocks)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
