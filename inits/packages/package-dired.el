
(req 'dired

     ;; optins for ls
     ;; (set-option dired-listing-switches "-L")

     ;; dired-find-alternate-file の有効化
     (put 'dired-find-alternate-file 'disabled nil)

     ;; ファイルなら別バッファで、ディレクトリなら同じバッファで開く
     (defun dired-open-in-accordance-with-situation ()
       (interactive)
       (cond ((string-match "\\(?:\\.\\.?\\)"
                            (format "%s" (thing-at-point 'filename)))
              (dired-find-alternate-file))
             ((file-directory-p (dired-get-filename))
              (dired-find-alternate-file))
             (t
              (dired-find-file))))


     ;; RET 標準の dired-find-file では dired バッファが複数作られるので
     ;; dired-find-alternate-file を代わりに使う
     (define-key dired-mode-map (kbd "C-m") 'dired-open-in-accordance-with-situation)
     (define-key dired-mode-map (kbd "a") 'dired-find-file)

     ;; ディレクトリの移動キーを追加(wdired 中は無効)
     (define-key dired-mode-map (kbd "<left>") 'dired-up-directory)
     (define-key dired-mode-map (kbd "<right>") 'dired-open-in-accordance-with-situation))

(req 'find-dired
     (set-option find-ls-option '("-print0 | xargs -0 ls -ld" . "-ld")))



;; dired
(add-hook 'dired-load-hook
          #'(lambda () (load "dired-x")))
(setq dired-guess-shell-alist-user
      `(( ,(rx  "."
                (or "jpg"
                    "png"
                    "bmp"
                    "gif")
                line-end)
          "kuva.sh")))


(provide 'package-dired)
