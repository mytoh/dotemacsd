;;; paketti-helm-recoll.el -*- lexical-binding: t -*-

(liby 'helm-recoll
  (after 'helm-recoll
      (when (executable-find "recoll")
        (helm-recoll-create-source "main" "~/.recoll")))
  )

(provide 'paketti-helm-recoll)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
