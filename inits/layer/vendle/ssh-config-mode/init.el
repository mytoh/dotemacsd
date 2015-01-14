;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

  ;;;;; ssh config mode
(liby 'ssh-config-mode
  (autoload 'ssh-config-mode "ssh-config-mode" t)
  (mode ".ssh/config\\'"        #'ssh-config-mode)
  (mode "sshd?_config\\'"       #'ssh-config-mode)
  (mode "known_hosts\\'"        #'ssh-known-hosts-mode)
  (mode "authorized_keys2?\\'"  #'ssh-authorized-keys-mode))

;;; init.el ends here
