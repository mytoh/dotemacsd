
(req 'skk
     ;; enable skk mode by pressing カタカナ/ひらがな key
     (global-set-key [hiragana-katakana] 'skk-mode)

     ;; load skk files on emacs startup
     (setq skk-preload t)

     ;; set default input method to skk
     (setq default-input-method "japanese-skk")
     )
