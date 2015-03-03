;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:


(after 'image
    (req 'image+
      (when (require 'hydra nil t)
        (hydra-create "C-x C-l" imagex-hydra-default-heads))
      (imagex-global-sticky-mode)
      (imagex-auto-adjust-mode)))

;;; init.el ends here
