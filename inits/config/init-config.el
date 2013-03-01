
(defvar init-configs
  '(
    config-setting
    config-key
    config-hook
    config-face
    config-vendor
    config-path
    ))

(mapc #'require init-configs)

(provide 'init-config)
