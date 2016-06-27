;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'psession
  (set-option psession-elisp-objects-default-directory
              (file-name-as-directory (locate-user-emacs-file "psession")))
  (set-option psession-object-to-save-alist
              `((extended-command-history . "extended-command-history.el")
                ,@(if (locate-library "helm")
                      '((helm-external-command-history . "helm-external-command-history.el")
                        (helm-surfraw-engines-history . "helm-surfraw-engines-history.el")
                        (helm-ff-history . "helm-ff-history.el")
                        (helm-grep-history . "helm-grep-history.el")
                        (helm-M-x-input-history . "helm-M-x-input-history")
                        (helm-apropos-history . "helm-apropos-history")))
                (kill-ring . "kill-ring.el")
                (kill-ring-yank-pointer . "kill-ring-yank-pointer.el")
                (register-alist . "register-alist.el")
                (org-tags-history . "org-tags-history.el")
                (eww-hisotry . "eww-history.el")
                (evil-ex-history . "evil-ex-history.el")
                (evil-ex-search-history . "evil-ex-search-history.el")
                (evil-search-forward-history . "evil-search-forward-history.el")
                (evil-search-backward-history . "evil-search-backward-history.el")))
  (hook 'psession-mode-hook
        (lambda ()
          (remove-hook 'kill-emacs-hook 'psession--dump-some-buffers-to-list)
          (remove-hook 'emacs-startup-hook 'psession--restore-some-buffers)
          (remove-hook 'kill-emacs-hook 'psession-save-last-winconf)
          (remove-hook 'emacs-startup-hook 'psession-restore-last-winconf)))
  (enable-mode psession-mode))

;;; init.el ends here
