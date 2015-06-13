;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'ssh-config
  (command (ssh-config-mode) "ssh-config")
  (command (sshd-config-mode) "sshd-config")

  (mode  "ssh_config\\'"  #'ssh-config-mode)
  (mode ".ssh/config\\'"  #'ssh-config-mode)

  (mode "sshd_config\\'"  #'sshd-config-mode)
  )

;;; init.el ends here
