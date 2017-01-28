;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package targets
  :init
  (setq targets-pair-text-objects
        '((paren "(" ")" pair :more-keys "b")
          (bracket "[" "]" pair :more-keys "r")
          (curly "{" "}" pair :more-keys "c")
          (angle "<" ">" pair)))

  :config
  (targets-setup t))

;;; init.el ends here


