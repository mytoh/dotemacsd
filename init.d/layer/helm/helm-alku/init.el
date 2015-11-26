;;; init-helm-alku.el -*- lexical-binding: t -*-

(liby 'helm-alku

  (command (helm-alku
            helm-alku-program
            helm-alku-directory
            helm-alku-vihko
            helm-alku-ääliö
            helm-alku-layer
            helm-alku-twitch)
           "helm-alku")

  (after 'helm-alku
      (set-option helm-alku-directory-list
       `(("sarjakuva" . ,(muki:expand-path-huone "kuvat/sarjakuva"))
         ("paketti" . ,(locate-user-emacs-file "init.d/paketit"))
         ("hoarder" . ,(locate-user-emacs-file "hoarder"))
         ("elpa" . ,(locate-user-emacs-file "elpa"))))
    (helm-alku-directory-add-subdirectories (muki:expand-path-huone "ateljee/"))
    (helm-alku-directory-add-subdirectories (muki:expand-path-huone "kuvat/sivusto"))
    (helm-alku-directory-add-subdirectories (getenv "HUONE"))
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
                  "xombrero"
                  "lxappearance"))
    ;; remove bookmark source temporally
    (cl-delete 'helm-source-bookmarks helm-alku-sources)

    ;; helm-alku-twitch
    (setq helm-alku-twitch-additional-games
          '("Clicker Heroes"))
    )

  (add-global-key "C-c h" #'helm-alku)

  )

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
