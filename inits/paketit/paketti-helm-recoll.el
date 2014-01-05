;;; paketti-helm-recoll.el -*- lexical-binding: t -*-

(req 'helm-recoll
     (when (executable-find "recoll")
       (helm-recoll-create-source "main" "~/.recoll"))
     )

(provide 'paketti-helm-recoll)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
