;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

;; [[http://lists.gnu.org/archive/html/emacs-devel/2017-02/msg00771.html][Possible compatibility issue with emacs 25.1 and latest org-mode]]
;; this package cause erros in org-mode src blocks
(use-package goto-addr
  :commands (goto-address-prog-mode)
  :init
  (progn
    ;; Highlight and allow to open http link at point in programming buffers
    ;; goto-address-prog-mode only highlights links in strings and comments
    (add-hook 'prog-mode-hook #'goto-address-prog-mode)))

;;; init.el ends here
