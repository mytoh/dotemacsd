;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

;; [[http://emacs.rubikitch.com/col-highlight/][col-highlight:現在桁をハイライトさせるお好み3手段]]
(use-package col-highlight
  :commands (column-highlight-mode toggle-highlight-column-when-idle                                   )
  :init
  (progn
    (add-hook 'prog-mode-hook #'column-highlight-mode)
    (add-hook 'prog-mode-hook
              (lambda ()
                (progn
;;; アイドルになって0.2秒後桁を表示させる
                  (toggle-highlight-column-when-idle 1)
                  (col-highlight-set-interval 0.3)
;;; hl-lineと併用すればカーソル位置を十字形にハイライトできる
                  (custom-set-faces
                   '(col-highlight ((t (:inherit hl-line)))))))))
  )

;;; init.el ends here
