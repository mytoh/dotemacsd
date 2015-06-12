;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:


(after 'image
    (req 'image+
      (defhydra imagex-sticky-binding (global-map "C-x C-l")
        "Manipulating Image"
        ("+" imagex-sticky-zoom-in "zoom in")
        ("-" imagex-sticky-zoom-out "zoom out")
        ("M" imagex-sticky-maximize "maximize")
        ("O" imagex-sticky-restore-original "restore original")
        ("S" imagex-sticky-save-image "save file")
        ("r" imagex-sticky-rotate-right "rotate right")
        ("l" imagex-sticky-rotate-left "rotate left"))
      (imagex-global-sticky-mode)
      (imagex-auto-adjust-mode)))

;;; init.el ends here
