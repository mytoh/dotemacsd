
(defvar init-systems
  '(system-darwin
    system-freebsd))


(seq-each #'require init-systems)

(provide 'init-system)
