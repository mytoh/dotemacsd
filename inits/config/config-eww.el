;;; config-eww.el -*- lexical-binding: t -*-

(liby 'eww
      ;; (set-option browse-url-browser-function 'eww-browse-url)
      (set-option eww-home-url "file:///home/mytoh/.org/etusivu/etusivu.html")
      (disable-option shr-image-animate)
      (with-eval-after-load 'eww
        (set-option eww-download-directory "~/huone/lataukset")
        (define-key eww-mode-map (kbd "C-i") 'shr-next-link))
      (muki:define-global-key (kbd "w") 'eww)
      )

;; (replace-string "\221" "`" nil (point-min) (point-max))  ; opening single quote
;; (replace-string "\222" "'" nil (point-min) (point-max))  ; closing single quote

(provide 'config-eww)
