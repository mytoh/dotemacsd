;;; paketti-eww.el -*- lexical-binding: t -*-

(req 'eww
     (setq eww-download-path "~/huone/lataukset")
     (define-key eww-mode-map (kbd "C-i") 'shr-next-link)
     (setq browse-url-browser-function 'eww-browse-url)
     (add-hook 'after-init-hook
               (lambda ()
                 (mytoh:define-global-key (kbd "w") 'eww))))

;; (replace-string "\221" "`" nil (point-min) (point-max))  ; opening single quote
;; (replace-string "\222" "'" nil (point-min) (point-max))  ; closing single quote

(provide 'paketti-eww)
