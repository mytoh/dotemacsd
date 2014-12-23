
;; 2011-10-27
;; 空白や長すぎる行を視覚化する。
(require 'whitespace)
;; 1行が80桁を超えたら長すぎると判断する。
(setq whitespace-line-column 80)
(setq whitespace-style '(face              ; faceを使って視覚化する。
                         trailing          ; 行末の空白を対象とする。
                         lines-tail        ; 長すぎる行のうち
                                        ; whitespace-line-column以降のみを
                                        ; 対象とする。
                         tabs
                         indentation:tab
                         tab-mark
                         ;; space-mark
                         space-before-tab  ; タブの前にあるスペースを対象とする。
                         space-after-tab   ; タブの後にあるスペースを対象とする。
                         ))

(setq whitespace-display-mappings
      '(
        ;; (newline-mark 10 [60 10]) ; newlne, <
        ;; (newline-mark ?\n   [?\xB6 ?\n] )   ; end-of-line, ~
        (newline-mark ?\n [?~ ?\n])   ; end-of-line, ~
        (tab-mark 9 [187 9] [92 9]) ; tab, Â»
        ;; (space-mark 32 [183] [46]) ; 32 SPACE, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
        (space-mark   ?\    [?\xB7]     [?.])   ; space
        ))

(set-face-background 'whitespace-space-after-tab
                     "#444033")
(set-face-background 'whitespace-line
                     "#331212")
(set-face-foreground 'whitespace-space
                     "cyan")
(set-face-background 'whitespace-space
                     "cyan")

(whitespace-newline-mode)
(set-face-foreground 'whitespace-newline
                     (color-lighten-name (face-background 'default)
                                         30))

;; デフォルトで視覚化を有効にする。
(global-whitespace-mode 1)
