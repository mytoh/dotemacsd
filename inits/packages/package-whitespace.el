
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
;; デフォルトで視覚化を有効にする。
(global-whitespace-mode 1)

(provide 'package-whitespace)
