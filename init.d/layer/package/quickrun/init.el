;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; quickrun
(liby 'quickrun
  (defery 'quickrun)
  (after 'quickrun
      (cl-defun quickrun-sc (start end)
        (interactive "r")
        (if mark-active
            (quickrun :start start :end end)
          (quickrun)))
    (add-global-key "<f5>" #'quickrun-sc)
    (after 'popwin
        (push '("*quickrun*") popwin:special-display-config))
    (quickrun-add-command "scheme/gosh-r7rs"
                          '((:command . "gosh")
                            (:exec    . "%c -r7 %s"))
                          :default "scheme"
                          :mode 'scheme-mode)))

;;; init.el ends here
