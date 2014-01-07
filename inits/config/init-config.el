;;; init-config.el  -*- lexical-binding: t -*-
(defvar init-configs
  '(config-setting
    config-key
    config-hook
    config-path
    config-face
    config-clipboard
    config-font
    ))

(mapc 'require init-configs)

(provide 'init-config)
