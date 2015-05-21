;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'emacsshot
  (command (emacsshot-snap-frame) "emacsshot")

  ;; snap the frame by pressing the print-key and to snap the current window by prefixing the keypress with C-u.
  (global-set-key [print]
                  (lambda (&optional current-window)
                    (interactive "P")
                    (if current-window (emacsshot-snap-window)
                      (emacsshot-snap-frame))))
  )

;;; init.el ends here
