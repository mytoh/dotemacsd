;;; paketti-helm-recoll.el -*- lexical-binding: t -*-

(pak 'helm-recoll
     (with-eval-after-load
         (when (executable-find "recoll")
           (helm-recoll-create-source "main" "~/.recoll")))
     )

(provide 'paketti-helm-recoll)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
