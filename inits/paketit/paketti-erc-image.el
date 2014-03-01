;;; paketti-erc-image.el -*- lexical-binding: t -*-

(req 'erc-image
     (add-to-list 'erc-modules 'image)
     (erc-update-modules))

(provide 'paketti-erc-image)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
