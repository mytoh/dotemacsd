;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

  ;;;;; ssh config mode
(liby 'ssh-config-mode
  (autoload 'ssh-config-mode "ssh-config-mode" t)
  (add-to-list 'auto-mode-alist '(".ssh/config\\'"       . ssh-config-mode))
  (add-to-list 'auto-mode-alist '("sshd?_config\\'"      . ssh-config-mode))
  (add-to-list 'auto-mode-alist '("known_hosts\\'"       . ssh-known-hosts-mode))
  (add-to-list 'auto-mode-alist '("authorized_keys2?\\'" . ssh-authorized-keys-mode)))

;;; init.el ends here
