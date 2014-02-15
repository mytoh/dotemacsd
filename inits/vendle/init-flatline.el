;;; init-flatline.el -*- lexical-binding: t -*-

;; flatline
(req 'flatline

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
                                 `(:foreground "#bfcf3f"
                                               :background ,(face-background (flatline:theme-get-face 'left-sub))))))
         (if buffer-read-only
             (cl-concatenate 'string
                             (propertize " " 'face (flatline:theme-get-face 'left-sub))
                             ro
                             (propertize " %b " 'face (flatline:theme-get-face 'left-sub)))
           (propertize (flatline:pad "%b") 'face (flatline:theme-get-face 'left-sub)))))

     (cl-defun my-flatline:major-mode ()
       (propertize
        (flatline:pad
         (cl-concatenate 'string
                         mode-name
                         (if mode-line-process mode-line-process)
                         "%n" ))
        'face
        (cl-case major-mode
          (emacs-lisp-mode
           (flatline:theme-get-face 'right))
          (eshell-mode
           (flatline:theme-get-face 'left))
          (t (flatline:theme-get-face 'left)))))


     (flatline:set-theme 'solarized-dark)

     (setq flatline:mode-line '())
     (flatline:add 'my-flatline:major-mode)
     (flatline:add 'my-flatline:buffer-name)
     (flatline:add '(my-flatline:vc-mode . flatline:face-vc-mode))
     (flatline:add '(flatline:buffer-directory . middle))
     (flatline:add '(fill . middle))
     (flatline:add '(flatline:eol-desc . middle))
     (flatline:add '("<" . middle))
     (flatline:add '(my-flatline:coding-system . middle))
     (flatline:add '(my-flatline:position . right-sub))
     (flatline:add '(flatline:minor-mode . right))
     (flatline:update)

     (enable-mode flatline-mode)
     )

(provide 'init-flatline)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
