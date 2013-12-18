
(defvar init-configs
  '(config-setting
    config-key
    config-hook
    config-path
    config-face
    config-clipboard
    ))

(mapc #'require init-configs)

(provide 'init-config)
