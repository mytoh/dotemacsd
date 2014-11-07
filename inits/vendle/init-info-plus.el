;;; init-info-plus -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(after "info"
    (req 'info+)
  (set-face-attribute 'info-function-ref-item nil
                      :background "#222222")
  (set-face-attribute 'info-reference-item nil
                      :background "#333333"))

(provide 'init-info-plus)

;;; init-info-plus.el ends here
