;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; skk

(req 'skk-autoloads
  ;; ~/.emacs.d/ddskk/init is setting file
  (set-option skk-user-directory (locate-user-emacs-file "ddskk/"))
  ;; C-x C-j で skk モードを起動
  (add-global-key "C-x j" #'skk-mode
                  "C-x C-j" #'skk-mode)
  ;; enable skk mode by pressing カタカナ/ひらがな key
  (global-set-key [hiragana-katakana] #'skk-mode)
  ;; set default input method to skk
  ;; (setq default-input-method "japanese-skk")
  ;; .skk を自動的にバイトコンパイル
  ;;(enable-option skk-byte-compile-init-file)

;;;; preload dictionaries
  (setq skk-preload t)

  ;; (req 'context-skk)
  )


;;; init.el ends here
