
(req 'helm-swoop

  ;; キーバインドはお好みで
  (muki:global-set-key "M-i" 'helm-swoop)
  (muki:global-set-key "M-I" 'helm-swoop-back-to-last-point)
  (muki:global-set-key "C-c M-i" 'helm-multi-swoop)
  (muki:global-set-key "C-x M-i" 'helm-multi-swoop-all)

  ;; isearch実行中にhelm-swoopに移行
  (define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)

  (with-eval-after-load 'helm-swoop
    ;; helm-swoop実行中にhelm-multi-swoop-allに移行
    (define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop))

  ;; Save buffer when helm-multi-swoop-edit complete
  (enable-option helm-multi-swoop-edit-save)

  ;; 値がtの場合はウィンドウ内に分割、nilなら別のウィンドウを使用
  (setq helm-swoop-split-with-multiple-windows nil)

  ;; ウィンドウ分割方向 'split-window-vertically or 'split-window-horizontally
  (setq helm-swoop-split-direction 'split-window-vertically)

  ;; nilなら一覧のテキストカラーを失う代わりに、起動スピードをほんの少し上げる
  (setq helm-swoop-speed-or-color t)
  )


(provide 'init-helm-swoop)
