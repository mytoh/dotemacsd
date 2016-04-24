;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'general

  (setq general-define-keymaps 'evil-normal-state-map)
  (setq general-default-prefix "SPC")
  (setq general-default-states '(normal motion visual))
  
  (general-define-key "ff" 'find-file
                      "bb" 'switch-to-buffer
                      "bk" 'kill-buffer
                      "bl" 'list-buffers
                      "fw" 'save-buffer)

  (general-define-key 
   ;; :keymaps 'mesh-mode-map
   "zz" #'mesh:switch)

  (general-define-key
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
  (general-define-key
   "ap" #'helm-alku)
  )

;;; init.el ends here
