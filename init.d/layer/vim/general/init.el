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
                "zz" #'mesh:switch
                "zc" #'mesh:new-tab
                "zn" #'mesh:next-tab
                "zp" #'mesh:prev-tab
                "zs" #'mesh:split-tab
                "zS" #'mesh:vsplit-tab
                "zx" #'mesh:kill-pane
                "z)" #'mesh:next-session
                "z(" #'mesh:prev-session
                "zC" #'mesh:new-session
                "z<tab>" #'mesh:next-pane)
  

  )

;;; init.el ends here
