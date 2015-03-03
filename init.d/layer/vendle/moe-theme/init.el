;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'moe-theme
  ;; org-modeで見出しごとにフォントの大きさを変える
  (setq moe-theme-resize-org-title
        '(2.2 1.8 1.6 1.4 1.2 1.0 1.0 1.0 1.0))
  ;; mode-lineをオレンジにする
  ;; (サポートしている他の色: blue, orange, green ,magenta, yellow, purple, red, cyan, w/b)
  ;; (setq moe-theme-mode-line-color 'orange)
  (moe-dark)
  ;; あるいは (moe-light)
  )

;;; init.el ends here
