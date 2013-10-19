
(defvar init-configs
  '(config-setting
    config-key
    config-hook
    config-vendle
    config-path
    config-face
    ))

(mapc #'require init-configs)

(provide 'init-config)
