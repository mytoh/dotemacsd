;;; init-helm-alku.el -*- lexical-binding: t -*-

(liby 'helm-alku

      (autoload 'helm-alku "helm-alku")
      (autoload 'helm-alku-program "helm-alku")
      (autoload 'helm-alku-directory "helm-alku")
      (autoload 'helm-alku-vihko "helm-alku")

      (with-eval-after-load 'helm-alku
        (set-option helm-alku-directory-list
                    '(("video" . "~/huone/videot")
                      ("sarjakuva" . "~/huone/kuvat/sarjakuva")
                      ("lataukset" . "~/huone/lataukset")
                      ("4chan" . "~/huone/kuvat/sivusto/4ch")
                      ("futaba" . "~/huone/kuvat/sivusto/futaba")
                      ("paketti" . "~/.emacs.d/inits/paketit")
                      ("vendle" . "~/.emacs.d/vendle")
                      ("elpa" . "~/.emacs.d/elpa")))
        (helm-alku-directory-add-subdirectories "~/huone/projektit")
        (set-option helm-alku-program-list
                    '("v2c"
                      "conkeror"
                      "firefox"
                      "pcmanfm"
                      "thunar"
                      "caja_no_desktop.sh"  )))

      (muki:define-global-key (kbd "c")  'helm-alku-program)
      (muki:define-global-key (kbd "n") 'helm-alku-vihko)
      (muki:define-global-key (kbd "h") 'helm-alku)
      )

(provide 'init-helm-alku)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
