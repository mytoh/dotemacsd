;;; init-helm-alku.el -*- lexical-binding: t -*-

(pak 'helm-alku

     (autoload 'helm-alku-command "helm-alku")
     (autoload 'helm-alku "helm-alku")
     (autoload 'helm-alku-directory "helm-alku")

     (with-eval-after-load 'helm-alku
       (set-option helm-alku-directory-list
                   '(("video" . "~/huone/videot")
                     ("sarjakuva" . "~/huone/kuvat/sarjakuva")
                     ("lataukset" . "~/huone/lataukset")
                     ("4chan" . "~/huone/kuvat/sivusto/4ch")
                     ("futaba" . "~/huone/kuvat/sivusto/futaba")
                     ("paketti" . "~/.emacs.d/inits/paketit")))
       (helm-alku-directory-add-subdirectories "~/huone/projektit")
       (set-option helm-alku-command-list
                   '("v2c" "conkeror" "firefox" "pcmanfm" "thunar" "caja_no_desktop.sh")))

     (mytoh:define-global-key (kbd "c")  'helm-alku-command)
     (mytoh:define-global-key (kbd "h") 'helm-alku))

(provide 'init-helm-alku)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
