
(req 'dired

     ;; optins for ls
     (set-option dired-listing-switches
                 (concat dired-listing-switches "-h"))

     ;; diredを2つのウィンドウで開いている時に、デフォルトの移動orコピー先をもう一方のdiredで開いているディレクトリにする
     (enable-option dired-dwim-target)

     ;; dired-find-alternate-file の有効化
     (put 'dired-find-alternate-file 'disabled nil)

     ;; ファイルなら別バッファで、ディレクトリなら同じバッファで開く
     (cl-defun dired-open-in-accordance-with-situation ()
       (interactive)
       (cond ((string-match "\\(?:\\.\\.?\\)"
                            (format "%s" (thing-at-point 'filename)))
              (dired-find-alternate-file))
             ((file-directory-p (dired-get-filename))
              (dired-find-alternate-file))
             (t
              (dired-find-file))))

     (disable-option ls-lisp-use-insert-directory-program)
     (require 'ls-lisp)
     (enable-option ls-lisp-dirs-first)

     ;; RET 標準の dired-find-file では dired バッファが複数作られるので
     ;; dired-find-alternate-file を代わりに使う
     (define-key dired-mode-map (kbd "C-m") 'dired-open-in-accordance-with-situation)
     (define-key dired-mode-map (kbd "a") 'dired-find-file)

     ;; ディレクトリの移動キーを追加(wdired 中は無効)
     (define-key dired-mode-map (kbd "<left>") 'dired-up-directory)
     (define-key dired-mode-map (kbd "<right>") 'dired-open-in-accordance-with-situation))

;; (req 'find-dired
;;      (set-option find-ls-option '("-print0 | xargs -0 ls -ld" . "-ld")))


;; add [dired] to dired buffer
;; [[http://qiita.com/kbkbkbkb1/items/13585a5711d62e9800ef]]
(cl-defun muki:dired-append-buffer-name-hint ()
  "Append a auxiliary string to a name of dired buffer."
  (when (eq major-mode 'dired-mode)
    (let* ((dir (expand-file-name list-buffers-directory))
           (drive (if (and (eq 'system-type 'window-nt) ;; add drive letter on Windows
                           (string-match "^\\([a-zA-Z]:\\)" dir))
                      (match-string 1 dir) "")))
      (rename-buffer (concat (buffer-name) " [" drive "dired]") t))))
;; (add-hook 'dired-mode-hook 'muki:dired-append-buffer-name-hint)

;; dired
(add-hook 'dired-load-hook
          (lambda () (load "dired-x")))
(set-option dired-guess-shell-alist-user
            `(( ,(rx  "."
                      (or "jpg"
                          "png"
                          "bmp"
                          "gif")
                      line-end)
                "kuva.sh")))


(provide 'config-dired)
