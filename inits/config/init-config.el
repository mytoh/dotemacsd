;;; init-config.el  -*- lexical-binding: t -*-
(defvar init-configs
  '(config-setting
    config-key
    config-hook
    config-path
    config-face
    config-clipboard
    config-font
    config-erc
    config-eshell
    config-whitespace
    config-autoinsert
    config-dired
    config-eww
    config-newsticker
    ))

(mapc 'require init-configs)

(provide 'init-config)
