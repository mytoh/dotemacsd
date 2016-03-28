;;; config-eww.el -*- lexical-binding: t -*-


(cl-defun eww-disable-colours ()
  ;; [[http://rubikitch.com/2014/11/19/eww-nocolor/]]
;;; [2014-11-17 Mon]背景・文字色を無効化する
  (defvar eww-disable-colorize t)
  (defun shr-colorize-region--disable (orig start end fg &optional bg &rest _)
    (unless eww-disable-colorize
      (funcall orig start end fg)))
  (advice-add 'shr-colorize-region :around 'shr-colorize-region--disable)
  (advice-add 'eww-colorize-region :around 'shr-colorize-region--disable)
  (defun eww-disable-color ()
    "ewwで文字色を反映させない"
    (interactive)
    (setq-local eww-disable-colorize t)
    (eww-reload))
  (defun eww-enable-color ()
    "ewwで文字色を反映させる"
    (interactive)
    (setq-local eww-disable-colorize nil)
    (eww-reload)))

(after 'eww
    (eww-disable-colours))

(liby 'eww
  (command (eww) "eww")
  ;; (set-option url-user-agent  "Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0")
  ;; (set-option browse-url-browser-function 'eww-browse-url)
  (set-option eww-home-url "file:///home/mytoh/.org/etusivu/etusivu.html")
  (disable-option shr-image-animate)
  (enable-option shr-use-fonts)
  (after 'eww
      (set-option eww-download-directory (muki:expand-path-huone "lataukset"))
    ;; (set-option eww-search-prefix "https://duckduckgo.com/html/?q=!g+")
    (setq eww-search-prefix "http://www.google.co.jp/search?q=")
    (add-key eww-mode-map "C-i" #'shr-next-link))

  ;; [[http://www.cman.jp/network/support/go_access.cgi]]
  ;;; (eww "http://www.cman.jp/network/support/go_access.cgi")
  (require 'url-http)
  ;; (defvar url-user-agent-string "w3m/0.5.3")
  (setq url-user-agent-string  "Mozilla/5.0 (X11; FreeBSD amd64; rv:31.0) Gecko/20100101 Firefox/31.0 conkeror/1.0pre1")
  (cl-defun url-user-agent ()
    (format "User-Agent: %s\r\n" url-user-agent-string))

  (cl-defun muki:eww (url)
    (interactive "sEnter URL or keywords: ")
    (cl-letf* ((url-proxy-services '(("http" . "proxy.koti:3128"))))
      (eww url)))

  )


;; (replace-string "\221" "`" nil (point-min) (point-max))  ; opening single quote
;; (replace-string "\222" "'" nil (point-min) (point-max))  ; closing single quote
