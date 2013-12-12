
(req 'company

     (define-key company-active-map (kbd "C-n") 'company-select-next)
     (define-key company-active-map (kbd "C-p") 'company-select-previous)


     (set-face-attribute 'company-tooltip-selection nil
                         :background "#ab4223")

     (set-face-attribute 'company-tooltip nil
                         :foreground "#dfdfe1"
                         :background "#393939"
                         )

     (set-face-attribute 'company-tooltip-common nil
                         :foreground "LightSkyBlue")

     (set-face-attribute 'company-tooltip-common-selection nil
                         :foreground "LightSkyBlue")

     (add-hook 'company-mode-hook
               #'(lambda ()
                   (setq company-lighter " 会社")))

     (add-hook 'after-init-hook #'global-company-mode)
     )



(provide 'paketti-company-mode)
