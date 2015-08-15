;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(after 'css-mode
    (command (cssfmt-after-save) "cssfmt")
  (cl-defun muki:set-cssfmt ()
    (add-hook 'after-save-hook #'cssfmt-after-save))
  (add-hook 'css-mode-hook
            #'muki:set-cssfmt))

;;; init.el ends here
