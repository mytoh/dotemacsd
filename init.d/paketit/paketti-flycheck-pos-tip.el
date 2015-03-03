;;; paketti-flycheck-pos-tip.el -*- lexical-binding: t -*-

(pak 'flycheck-pos-tip
  (when (display-graphic-p (selected-frame))
    (after 'flycheck
        (setq flycheck-display-errors-function 'flycheck-pos-tip-error-messages))))

(provide 'paketti-flycheck-pos-tip)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
