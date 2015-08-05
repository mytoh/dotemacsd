;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'psession
  (set-option psession-object-to-save-alist
              '((ioccur-history . "ioccur-history.el")
                (extended-command-history . "extended-command-history.el")
                (helm-external-command-history . "helm-external-command-history.el")
                (helm-surfraw-engines-history . "helm-surfraw-engines-history.el")
                (helm-ff-history . "helm-ff-history.el")
                (helm-grep-history . "helm-grep-history.el")
                (kill-ring . "kill-ring.el")
                (kill-ring-yank-pointer . "kill-ring-yank-pointer.el")
                (register-alist . "register-alist.el")
                (org-tags-history . "org-tags-history.el")))
  (enable-mode psession-mode))

;;; init.el ends here
