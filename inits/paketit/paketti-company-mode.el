
(req 'company

     (define-key company-active-map (kbd "C-n") 'company-select-next)
     (define-key company-active-map (kbd "C-p") 'company-select-previous)

     (set-option company-idle-delay 0.3)
     (set-option company-begin-commands '(self-insert-command))
     (add-hook 'after-init-hook 'global-company-mode)

     ;; faces
     (set-face-attribute 'company-tooltip-selection nil
                         :background (mytoh:colour-hsl-to-hex 19 60 50))

     (set-face-attribute 'company-tooltip nil
                         :foreground "#dfdfe1"
                         :background "#393939")

     (set-face-attribute 'company-tooltip-common nil
                         :foreground (mytoh:colour-hsl-to-hex 170 70 70))

     (set-face-attribute 'company-tooltip-common-selection nil
                         :foreground "LightSkyBlue")

     (set-face-attribute 'company-scrollbar-bg nil
                         :background (face-foreground 'company-tooltip))

     (set-face-attribute 'company-scrollbar-fg nil
                         :background (face-background 'company-tooltip))

     (add-hook 'company-mode-hook
               (lambda ()
                 (setq company-lighter " 会社")))

     )



(provide 'paketti-company-mode)
