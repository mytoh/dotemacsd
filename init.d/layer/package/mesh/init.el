;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:


;;;;; eshell
;; (req 'eshell-session)
(req 'mesh
  (turn-on-mesh-mode)


  )



;; (use-package general
;;   :config
;;   (general-evil-define-key '(normal visual) global-map
;;     :prefix "SPC"
;;     ;; :keymaps 'mesh-mode-map
;;     "z" '(:package mesh)
;;     "zz" #'mesh:switch)
;;   (general-evil-define-key '(normal visual) eshell-mode-map
;;     :prefix "SPC"
;;     ;; "z" '(:package eshell
;;     ;;       :keymap eshell-mode-map)
;;     "z" '(:package mesh)
;;     "zz" #'mesh:switch
;;     "zc" #'mesh:new-tab
;;     "zn" #'mesh:next-tab
;;     "zp" #'mesh:prev-tab
;;     "zs" #'mesh:split-tab
;;     "zS" #'mesh:vsplit-tab
;;     "zx" #'mesh:kill-pane
;;     "z)" #'mesh:next-session
;;     "z(" #'mesh:prev-session
;;     "zC" #'mesh:new-session
;;     "z<tab>" #'mesh:next-pane)
;;   )

;;; init.el ends here
