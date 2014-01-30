;;; init-helm-ypv.el -*- lexical-binding: t -*-


(pak 'helm-ypv
     (autoload 'helm-ypv "helm-ypv")
     (autoload 'helm-ypv-bookmarks "helm-ypv")
     (autoload 'helm-ypv-channels "helm-ypv")

     (with-eval-after-load 'helm-ypv
       (set-option helm-ypv-local-address "localhost:7144")
       (add-to-list 'helm-ypv-yp-urls '(dan1 "dandan626.web.fc2.com"))
       (add-to-list 'helm-ypv-yp-urls '(dan2 "www27.atpages.jp/dandan626")))

     (mytoh:define-global-key (kbd "y") 'helm-ypv))

(provide 'init-helm-ypv)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
