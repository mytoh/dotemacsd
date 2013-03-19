
(req 'direx
     (req 'direx-project
          (global-set-key (kbd "C-x C-j" ) 'direx-project:jump-to-project-root-other-window))
     (push '(direx:direx-mode :position left :width 25 :dedicated t)
           popwin:special-display-config)
     (setq direx:leaf-icon "  "
           direx:open-icon "▾ "
           direx:closed-icon "▸ "))



(provide 'package-direx)
