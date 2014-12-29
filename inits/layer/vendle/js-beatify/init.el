;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'js-beautify
  (add-hook 'js-mode-hook 'js-beautify-init)
  (add-hook 'html-mode-hook 'js-beautify-init)
  (add-hook 'css-mode-hook 'js-beautify-init))


;;; init.el ends here
