;;; ja-period-newline -- ja-period-newline -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

;; [[http://rubikitch.com/2015/02/16/ov/][emacs ov.el : 【高機能オーバーレイライブラリ】読みづらいテキストに改行を入れる | MELPA Emacs Lisp Elisp パッケージ...]]

(require 'ov)
;;; バッファローカル変数を宣言
;;; defvar + make-variable-buffer-local
(defvar-local ja-period-newline-overlays nil)
(define-minor-mode ja-period-newline-mode
    "。の後に改行を入れてよみやすくする"
  nil " 。\\n" nil
  (if ja-period-newline-mode
      ;; 有効にしたときは
      (setq ja-period-newline-overlays
            ;; [。]をすべて検索し、改行を付加するオーバーレイを作成する
            (ov-set "。" 'after-string "\n"))
    ;; 無効にしたときは全オーバーレイを削除する
    (mapc 'delete-overlay ja-period-newline-overlays)))

(provide 'ja-period-newline)


;;; ja-period-newline.el ends here
