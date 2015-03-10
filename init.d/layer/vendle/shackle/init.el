;;; init-shackle -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'shackle
  (setq shackle-rules
        '(;; *compilation*は下部に2割の大きさで表示
          (compilation-mode :align below :ratio 0.2)
          ;; let helm handle help buffer
          ("*Help*" :select t)
          ;; 補完バッファは下部に3割の大きさで表示
          ("*Completions*" :align below :ratio 0.3)
          ;; M-x helm-miniは下部に7割の大きさで表示
          ("*helm mini*" :align below :ratio 0.7)
          ("\*helm" :regexp t :align bottom)
          (Man-mode :select t)))
  (shackle-mode 1)
  (setq shackle-lighter "")

;;; C-zで直前のウィンドウ構成に戻す
  (winner-mode 1)
  (global-set-key (kbd "C-z") 'winner-undo))

;; (req 'shackle
;;   ;; (setq display-buffer-function 'popwin:display-buffer)
;;   ;; (set-option shackle-rules
;;   ;;             '(("*Warnings*") ("*Compile-Log*")
;;   ;;               ("*Help*"
;;   ;;                :select t
;;   ;;                :reuse nil)
;;   ;;               ("*Backtrace*")
;;   ;;               ("*Google Translate*")
;;   ;;               ("*eww bookmarks*")
;;   ;;               ("*Completions*" :noselect t)
;;   ;;               ("*guide-key*" :position bottom)
;;   ;;               ("*Man" :regexp t :stick t)
;;   ;;               ("*ag*" :noselect t) ("*diff*")
;;   ;;               (compilation-mode :noselect t)
;;   ;;               (t :select t)))

;;   (set-option shackle-rules
;;               '((help-mode
;;                  :select t
;;                  :reuse nil)
;;                 ("*Compile-Log*"
;;                  :select t
;;                  :reuse nil)
;;                 (Man-mode
;;                  :select t
;;                  :reuse nil)
;;                 ))
;;   (enable-mode shackle-mode))

;; [[http://rubikitch.com/2015/03/10/shackle/]]
;; (req 'shackle
;;   (setq shackle-rules
;;         '(;; *compilation*は下部に2割の大きさで表示
;;           (compilation-mode :align below :ratio 0.2)
;;           ;; ヘルプバッファは右側に表示
;;           ;; ("*Help*" :align above)
;;           ;; 補完バッファは下部に3割の大きさで表示
;;           ("*Completions*" :align below :ratio 0.3)
;;           ;; M-x helm-miniは下部に7割の大きさで表示
;;           ("*helm mini*" :align below :ratio 0.7)
;;           ;; 他のhelmコマンドは右側に表示 (バッファ名の正規表現マッチ)
;;           ("\*helm" :regexp t :align bottom)
;;           ;; 上部に表示
;;           ("foo" :align above)
;;           ;; 別フレームで表示
;;           ("bar" :frame t)
;;           ;; 同じウィンドウで表示
;;           ("baz" :same t)
;;           ;; ポップアップで表示
;;           ("hoge" :popup t)
;;           ;; 選択する
;;           ("abc" :select t)
;;           ))
;;   (shackle-mode 1)
;;   (setq shackle-lighter "")

;; ;;; C-zで直前のウィンドウ構成に戻す
;;   (winner-mode 1)
;;   (global-set-key (kbd "C-z") 'winner-undo))

;;;; test
;; (display-buffer (get-buffer-create "*compilation*"))
;; (display-buffer (get-buffer-create "*Help*"))
;; (display-buffer (get-buffer-create "foo"))
;; (display-buffer (get-buffer-create "bar"))
;; (display-buffer (get-buffer-create "baz"))
;; (display-buffer (get-buffer-create "hoge"))
;; (display-buffer (get-buffer-create "abc"))


(provide 'init-shackle)

;;; init-shackle.el ends here
