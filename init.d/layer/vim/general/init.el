;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'general

  (general-evil-setup)

  (defvar muki:leader-key "SPC")

  (general-nmap :prefix muki:leader-key
                ;; :keymaps 'mesh-mode-map
                "zz" #'mesh:switch)

  (general-nmap :prefix muki:leader-key
                :keymaps 'eshell-mode-map
                "z z" #'mesh:switch
                "z c" #'mesh:new-tab
                "z n" #'mesh:next-tab
                "z p" #'mesh:prev-tab
                "z s" #'mesh:split-tab
                "z S" #'mesh:vsplit-tab
                "z x" #'mesh:kill-pane
                "z )" #'mesh:next-session
                "z (" #'mesh:prev-session
                "z C" #'mesh:new-session
                "z <tab>" #'mesh:next-pane)

  ;; all keywords arguments are still supported
  (general-nmap :prefix muki:leader-key
                "ap" #'helm-alku)
  )

;;; init.el ends here
