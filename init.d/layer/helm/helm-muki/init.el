;;; init-helm-muki.el -*- lexical-binding: t -*-

(liby 'helm-muki

  (command (helm-muki
            helm-muki-program
            helm-muki-directory
            helm-muki-vihko
            helm-muki-ääliö
            helm-muki-layer
            helm-muki-twitch)
           "helm-muki")

  (after 'helm-muki
      (set-option helm-muki-directory-list
       `(("sarjakuva" . ,(muki:expand-path-huone "kuvat/sarjakuva"))
         ("paketti" . ,(locate-user-emacs-file "init.d/paketit"))
         ("hoarder" . ,(locate-user-emacs-file "vendor"))
         ("elpa" . ,(locate-user-emacs-file "elpa"))))
    (helm-muki-directory-add-subdirectories (muki:expand-path-huone "ateljee/"))
    (helm-muki-directory-add-subdirectories (muki:expand-path-huone "kuvat/sivusto"))
    (helm-muki-directory-add-subdirectories (getenv "HUONE"))
    (set-option helm-muki-program-list
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
                  "lxappearance"
                  "corebird"))
    ;; remove bookmark source temporally
    (cl-delete 'helm-source-bookmarks helm-muki-sources)

    ;; helm-muki-twitch
    (setq helm-muki-twitch-additional-games
          '("Clicker Heroes" "Elite: Dangerous"
            "Programming" "Splatoon"
            "Hyper Light Drifter"
            "Factorio"
            "Xenoblade Chronicles X"
            "Project Reality: BF2"
            "Stellaris"
            "Crea"
            "The Elder Scrolls V: Skyrim"))
    )

  (add-global-key "C-c h" #'helm-muki)

  )

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
