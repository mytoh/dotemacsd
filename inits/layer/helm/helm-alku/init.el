;;; init-helm-alku.el -*- lexical-binding: t -*-

(liby 'helm-alku

  (auto (helm-alku
         helm-alku-program
         helm-alku-directory
         helm-alku-vihko
         helm-alku-ääliö
         helm-alku-layer)
        "helm-alku")

  (after 'helm-alku
      (set-option helm-alku-directory-list
       `(("video" . "~/huone/videot")
         ("sarjakuva" . "~/huone/kuvat/sarjakuva")
         ("lataukset" . "~/huone/lataukset")
         ("4chan" . "~/huone/kuvat/sivusto/4chan")
         ("lainchan" . "~/huone/kuvat/sivusto/lainchan")
         ("futaba" . "~/huone/kuvat/sivusto/futaba")
         ("paketti" . ,(muki:user-emacs-directory "inits/paketit"))
         ("vendle" . ,(muki:user-emacs-directory "vendle"))
         ("elpa" . ,(muki:user-emacs-directory "elpa"))))
    (helm-alku-directory-add-subdirectories "~/huone/projektit")
    (set-option helm-alku-program-list
                '("v2c"
                  "conkeror"
                  "firefox"
                  "rox"
                  "pcmanfm"
                  "thunar"
                  "mcomix"
                  "gmusicbrowser"
                  "caja_no_desktop.sh"
                  "nemo_no_desktop.sh"
                  "qcomicbook"
                  "mlterm"
                  "xombrero")))

  (muki:define-launcher-key "c"  #'helm-alku-program)
  (muki:define-launcher-key "n" #'helm-alku-vihko)
  (add-global-key "C-c h" #'helm-alku)

  )

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
