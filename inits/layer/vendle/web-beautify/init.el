;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; web-beatify
(liby 'web-beautify
  (auto (web-beautify-css-buffer) "web-beautify")
  (after 'css-mode
      (add-hook 'css-mode-hook
       (clambda ()
           (add-hook 'before-save-hook #'web-beautify-css-buffer t t)))))


;;; init.el ends here
