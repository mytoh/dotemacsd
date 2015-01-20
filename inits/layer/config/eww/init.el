;;; config-eww.el -*- lexical-binding: t -*-

(liby 'eww
  (auto (eww) "eww")
  ;; (set-option url-user-agent  "Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0")
  ;; (set-option browse-url-browser-function 'eww-browse-url)
  (set-option eww-home-url "file:///home/mytoh/.org/etusivu/etusivu.html")
  (disable-option shr-image-animate)
  (after 'eww
      (set-option eww-download-directory "~/huone/lataukset")
    ;; (set-option eww-search-prefix "https://duckduckgo.com/html/?q=!g+")
    (setq eww-search-prefix "http://www.google.co.jp/search?q=")
    (add-key eww-mode-map "C-i" 'shr-next-link))

  ;; [[http://www.cman.jp/network/support/go_access.cgi]]
  ;;; (eww "http://www.cman.jp/network/support/go_access.cgi")
  (require 'url-http)
  ;; (defvar url-user-agent-string "w3m/0.5.3")
  (defvar url-user-agent-string  "Mozilla/5.0 (X11; FreeBSD amd64; rv:31.0) Gecko/20100101 Firefox/31.0 conkeror/1.0pre1")
  (cl-defun url-user-agent ()
    (format "User-Agent: %s\r\n" url-user-agent-string))

  (cl-defun muki:eww (url)
    (interactive "sEnter URL or keywords: ")
    (cl-letf* ((url-proxy-services '(("http" . "proxy.koti:8080"))))
      (eww url)))

  (muki:define-launcher-key "w" 'muki:eww)
  )

;; (replace-string "\221" "`" nil (point-min) (point-max))  ; opening single quote
;; (replace-string "\222" "'" nil (point-min) (point-max))  ; closing single quote
