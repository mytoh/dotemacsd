
(liby 'company
  (command (company-mode) "company")


  ;; (add-hook 'emacs-startup-hook #'global-company-mode)
  (add-hook 'emacs-lisp-mode-hook #'company-mode)
  (add-hook 'scheme-mode-hook #'company-mode)
  (add-hook 'org-mode-hook #'company-mode)
  ;; (add-hook 'eshell-mode-hook #'company-mode)
  ;; (add-hook 'git-commit-mode #'company-mode)

  (after 'company
      (setq company-idle-delay 0.3)
    (setq company-tooltip-limit 30)
    (setq company-minimum-prefix-length 2)

    (add-key company-active-map
      "C-j" #'company-select-next
      "C-k" #'company-select-previous)

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

    )

  ;; (setq company-echo-delay 0)
  ;; (setq company-auto-complete nil)
  ;; (cl-pushnew 'company-dabbrev company-backends)
  ;; (cl-pushnew 'company-ispell company-backends)
  ;; (cl-pushnew 'company-files  company-backends)
  ;; (req 'company-scheme
  ;;   (add-to-list 'company-backends 'company-scheme-backend t))

  )

(after 'company
    (req 'company-yasnippet
      (add-hook 'emacs-lisp-mode-hook
                (lambda ()
                  (set (make-local-variable 'company-backends)
                       (cl-pushnew 'company-yasnippet company-backends))))))

