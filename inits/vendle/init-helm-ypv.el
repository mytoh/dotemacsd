;;; init-helm-ypv.el -*- lexical-binding: t -*-

(liby 'helm-ypv
      (autoload 'helm-ypv "helm-ypv")
      (autoload 'helm-ypv-bookmarks "helm-ypv")
      (autoload 'helm-ypv-channels "helm-ypv")

      (with-eval-after-load 'helm-ypv
        (set-option helm-ypv-local-address "localhost:7144")
        (load-file "~/.emacs.d/helm-ypv/yp"))

      (muki:define-global-key (kbd "y") 'helm-ypv)

      (pak 'migemo
           (with-eval-after-load "migemo"
             (defadvice helm-ypv
                 (around ad-helm-M-x activate)
               (let ((helm-use-migemo t))
                 ad-do-it)))))

(provide 'init-helm-ypv)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
