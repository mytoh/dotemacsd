;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

;; [[http://rubikitch.com/2015/02/04/pangu-spacing/][emacs pangu-spacing.el : 全角と半角の間に自動でスペースを入れる新実装 | MELPA Emacs Lisp Elisp パッケー...]]

(liby 'pangu-spacing
  (command (pangu-spacing-mode) "pangu-spacing")

  ;; text-modeやその派生モード(org-mode等)のみに使いたいならこれ
  (add-hook 'text-mode-hook #'pangu-spacing-mode)

  ;; すべてのメジャーモードに使ってみたい人はこれを
  ;; (global-pangu-spacing-mode 1)

  (after 'pangu-spacing      
      ;; chinse-two-byte→japaneseに置き換えるだけで日本語でも使える
      (validate-setq pangu-spacing-chinese-before-english-regexp
       (rx (group-n 1 (category japanese))
           (group-n 2 (in "a-zA-Z0-9"))))
    (validate-setq pangu-spacing-chinese-after-english-regexp
                   (rx (group-n 1 (in "a-zA-Z0-9"))
                       (group-n 2 (category japanese))))
    ;; 見た目ではなくて実際にスペースを入れる
    (validate-setq pangu-spacing-real-insert-separtor t)

    ))

;;; init.el ends here
