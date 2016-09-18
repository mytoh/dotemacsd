;;; config-bs -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'bs
  (global-set-key [(f11)] 'bs-cycle-previous)
  (global-set-key [(f12)] 'bs-cycle-next)
  (after 'bs 
      (validate-setq bs-cycle-configuration-name "files-and-scratch")))  ; *scratch*バッファも表示候補に入れる

;;; config-bs.el ends here
