
(defvar init-systems
  '(system-darwin
    system-freebsd))


(mapc #'require init-systems)

(provide 'init-system)
