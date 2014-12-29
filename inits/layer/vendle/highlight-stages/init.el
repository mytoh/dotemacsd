;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:


(liby 'highlight-stages
  (auto (highlight-stages-mode)
        "highlight-stages")
  (add-hook 'emacs-lisp-mode-hook 'highlight-stages-mode)
  (add-hook 'scheme-mode-hook 'highlight-stages-mode))

;;; init.el ends here
