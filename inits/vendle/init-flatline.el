;;; init-flatline.el -*- lexical-binding: t -*-

;; flatline
(req 'flatline
     (defface my-flatline-left
       '((t (:foreground "gray10"
                         :background "SkyBlue3"
                         :box nil)))
       "face for left")

     (defface my-flatline-left-sub
       '((t (:foreground "gray70"
                         :background  "#123550"
                         :box nil)))
       "face for sub")

     (defface my-flatline-left-sub-sub
       '((t (:foreground  "white"
                          :background  "#112230"
                          :box nil)))
       "face for left sub sub")

     (cl-defun my-flatline:vc-mode ()
       (if vc-mode
           (cl-concatenate 'string
                           ""
                           vc-mode)
         ""))

     (cl-defun my-flatline:coding-system ()
       (if (boundp 'buffer-file-coding-system)
           (symbol-name buffer-file-coding-system)
         ""))

     (cl-defun my-flatline:position ()
       (cl-letf ((line-num (number-to-string (line-number-at-pos (point-max)))))
         (cl-concatenate 'string
                         "%c" " : "
                         "%l" "/" line-num)))

     (setq flatline:mode-line
           '((flatline:major-mode . my-flatline-left)
             ("%b" . my-flatline-left-sub)
             (my-flatline:vc-mode . flatline:face-vc-mode)
             (flatline:buffer-directory . my-flatline-left-sub-sub)

             (fill . my-flatline-left-sub-sub)

             (flatline:eol-desc . my-flatline-left-sub-sub)
             ("<" . my-flatline-left-sub-sub)
             (my-flatline:coding-system . my-flatline-left-sub-sub)
             (my-flatline:position . my-flatline-left-sub)
             (flatline:minor-mode . my-flatline-left)))

     (flatline-mode 1)
     )

(provide 'init-flatline)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
