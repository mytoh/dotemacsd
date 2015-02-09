;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:


(after 'image
    (req 'image+
      (after 'image+
          (when (require 'hydra nil t)
            (hydra-create "C-x C-l" imagex-hydra-default-heads)))
      (imagex-auto-adjust-mode 1)))

;;; init.el ends here
