
(req 'company

  ;; (setq company-idle-delay 0.3)
  (setq company-tooltip-limit 30)
  (setq company-minimum-prefix-length 2)
  ;; (setq company-echo-delay 0)
  ;; (setq company-auto-complete nil)
  (add-hook 'after-init-hook #'global-company-mode)
  (cl-pushnew 'company-dabbrev company-backends)
  (cl-pushnew 'company-ispell company-backends)
  (cl-pushnew 'company-files  company-backends)

  (add-key company-active-map
    "C-n" #'company-select-next
    "C-p" #'company-select-previous)

  (set-face-attribute 'company-tooltip-selection nil
                      :background (muki:colour-hsl-to-hex 19 60 50))

  (set-face-attribute 'company-tooltip nil
                      :foreground "#dfdfe1"
                      :background "#393939")

  (set-face-attribute 'company-tooltip-common nil
                      :foreground (muki:colour-hsl-to-hex 170 70 70))

  (set-face-attribute 'company-tooltip-common-selection nil
                      :foreground "LightSkyBlue")

  (set-face-attribute 'company-scrollbar-bg nil
                      :background (face-foreground 'company-tooltip))

  (set-face-attribute 'company-scrollbar-fg nil
                      :background (face-background 'company-tooltip))

  ;; (req 'company-scheme
  ;;   (add-to-list 'company-backends 'company-scheme-backend t))

  )
