
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
                         space-before-tab  ; タブの前にあるスペースを対象とする。
                         space-after-tab)) ; タブの後にあるスペースを対象とする。

(setq whitespace-display-mappings
      '(
        (newline-mark 10 [60 10]) ; newlne, <
        (tab-mark 9 [187 9] [92 9]) ; tab, Â»
        ))

(set-face-background 'whitespace-space-after-tab
                     "#444033")

(set-face-background 'whitespace-line
                     "PaleVioletRed3")

;; デフォルトで視覚化を有効にする。
(global-whitespace-mode 1)

(provide 'config-whitespace)