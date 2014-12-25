;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; skk
;; ディレクトリ指定
;; ~/.emacs.d/ddskk/init is setting file
(set-option skk-user-directory (muki:user-emacs-directory "ddskk/"))
(req 'skk-autoloads
  ;; C-x C-j で skk モードを起動
  (add-global-key "C-x C-\\" 'skk-mode
                  "C-x C-j" 'skk-mode
                  ;; enable skk mode by pressing カタカナ/ひらがな key
                  [hiragana-katakana] 'skk-mode)
  ;; set default input method to skk
  ;; (setq default-input-method "japanese-skk")
  ;; .skk を自動的にバイトコンパイル
  (enable-option skk-byte-compile-init-file)

  ;; (req 'context-skk)
  )


;;; init.el ends here
