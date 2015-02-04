;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; highlight-defined
(liby 'highlight-defined
  (auto (highlight-defined-mode) "highlight-defined")
  (add-hook 'emacs-lisp-mode-hook #'highlight-defined-mode))


;;; init.el ends here
