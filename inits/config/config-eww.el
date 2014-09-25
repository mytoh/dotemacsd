;;; config-eww.el -*- lexical-binding: t -*-

(liby 'eww
  ;; (set-option browse-url-browser-function 'eww-browse-url)
  (set-option eww-home-url "file:///home/mytoh/.org/etusivu/etusivu.html")
  (disable-option shr-image-animate)
  (after 'eww
      (set-option eww-download-directory "~/huone/lataukset")
    (set-option eww-search-prefix "https://duckduckgo.com/html/?q=!g+")
    (muki:define-key eww-mode-map "C-i" 'shr-next-link))

  (cl-defun muki:eww (url)
    (interactive "sEnter URL or keywords: ")
    (cl-letf ((url-proxy-services '(("http" . "proxy.koti:8080"))))
      (eww url)))

  (muki:define-launcher-key "w" 'muki:eww)
  )

;; (replace-string "\221" "`" nil (point-min) (point-max))  ; opening single quote
;; (replace-string "\222" "'" nil (point-min) (point-max))  ; closing single quote

(provide 'config-eww)
