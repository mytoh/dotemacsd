;;; init-flatline.el -*- lexical-binding: t -*-

;; flatline
(req 'flatline

     (flatline:set-theme 'solarized-dark)

     (defface flatline-theme-my-edge
       '((t (:foreground "gray10"
                         :background "Darkorange3"
                         :box nil)))
       "face for left")

     (defface flatline-theme-my-middle
       '((t (:foreground "gray10"
                         :background  "yellow4"
                         :box nil)))
       "face for sub")

     (defface flatline-theme-my-fill
       '((t (:foreground  "white"
                          :background  "#112230"
                          :box nil)))
       "face for left sub sub")

     (cl-defun my-flatline:vc-mode ()
       (cl-letf ((symbol ""))
         (if vc-mode
             (cl-concatenate 'string
                             symbol
                             vc-mode)
           "")))

     (cl-defun my-flatline:coding-system ()
       (if (boundp 'buffer-file-coding-system)
           (symbol-name buffer-file-coding-system)
         ""))

     (cl-defun my-flatline:position ()
       (cl-letf ((line-num (number-to-string (line-number-at-pos (point-max)))))
         (cl-concatenate 'string
                         "%c" " : "
                         "%l" "/" line-num)))

     (cl-defun my-flatline:buffer-name ()
       (cl-letf ((ro (propertize "🔒" 'face
                                 `(:foreground "#afcf3f"
                                               :background ,(face-background (flatline:theme-get-face 'left-sub))))))
         (if buffer-read-only
             (cl-concatenate 'string
                             (propertize " " 'face (flatline:theme-get-face 'left-sub))
                             ro
                             (propertize " %b " 'face (flatline:theme-get-face 'left-sub)))
           (propertize " %b " 'face (flatline:theme-get-face 'left-sub)))))

     (cl-defun my-flatline:major-mode ()
       (propertize
        (cl-concatenate 'string
                        " "
                        mode-name
                        (if mode-line-process mode-line-process)
                        "%n"
                        " ")
        'face
        (cl-case major-mode
          (emacs-lisp-mode
           (flatline:theme-get-face 'right))
          (eshell-mode
           (flatline:theme-get-face 'left))
          (t (flatline:theme-get-face 'letf)))))

     (flatline:update
      `(my-flatline:major-mode
        my-flatline:buffer-name
        (my-flatline:vc-mode . flatline:face-vc-mode)
        (flatline:buffer-directory . middle)

        (fill . middle)

        (flatline:eol-desc . middle)
        ("<" . middle)
        (my-flatline:coding-system . middle)
        (my-flatline:position . right-sub)
        (flatline:minor-mode . right)))

     (enable-mode flatline-mode)
     )

(mytoh:comment
 (format-mode-line (flatline:make-component-symbol 'my-flatline:buffer-name))
 (format-mode-line (my-flatline:buffer-name))
 (format-mode-line (flatline:make-component-list '("test" . flatline-theme-my-edge)))
 (setq flatline:mode-line `(("test" . ,(flatline:theme-get-face 'edge))))
 (fboundp 'my-flatline:buffer-name)
 (format-mode-line (flatline:make-component-symbol 'my-flatline:major-mode))
 (cl-defun test-mode-line ()
   (propertize "test" 'face (flatline:theme-get-face 'left-sub)))
 (flatline:update `(test-mode-line))
 (my-flatline:major-mode)
 )
(provide 'init-flatline)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
