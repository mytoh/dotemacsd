;;; paketti-markdown-mode.el -*- lexical-binding: t -*-

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(provide 'paketti-markdown-mode)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
