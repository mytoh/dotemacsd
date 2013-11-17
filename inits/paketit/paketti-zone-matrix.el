
(req 'zone-matrix
     (req 'zone-matrix-settings)
     (req 'zone-settings)

     (setq zone-programs [zone-matrix])
     (zone-when-idle 60)
     )

(provide 'paketti-zone-matrix)
