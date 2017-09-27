;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

;;;;; local packages
(cl-labels ((add-project-root (path &optional option)
                              (cl-letf ((proj-path (thread-last (getenv "HUONE")
                                                     (expand-file-name "ateljee")
                                                     (expand-file-name path))))
                                (when (file-exists-p proj-path)
                                  (hoarder:register proj-path option)))))
  (add-project-root  "emacs-flatline")
  (add-project-root "helm-yplistener" '(:tags "helm"
                                        :load-path ["lisp"]))
  (add-project-root "company-scheme" '(:tags ["company" "scheme"]))
  (add-project-root "emacs-scheme-keywords" '(:tags "scheme"))
  (add-project-root "emacs-lehtifile-mode")
  (add-project-root "emacs-navi2ch-file-mode" '(:tags "navi2ch"))
  ;; (add-project-root "emacs-eshell-switch" '(:tags "eshell"))
  (add-project-root "emacs-mesh" '(:tags "eshell"))
  (add-project-root "emacs-eshell-alias" '(:tags "eshell"))
  (add-project-root "helm-project-buffer" '(:tags "helm"))
  (add-project-root "emacs-eshellar" '(:tags ["eshell" "shellar"]))
  (add-project-root "emacs-hoarder" '(:load-path nil
                                      :tags ["package"]))
  (add-project-root "helm-features" '(:tags ["emacs-lisp"]))
  (add-project-root "helm-eww-bookmark" '(:tags ["helm" "eww"]))
  (add-project-root "helm-eww-history" '(:tags ["helm" "eww"]))
  (add-project-root "helm-eww-search-engine" '(:tags ["helm" "eww"]))
  (add-project-root "helm-eshell-jump" '(:tags ["helm" "eshell"]))
  (add-project-root "emacs-glof" '(:tags ["plist" "utility"]))
  (add-project-root "emacs-fridge" )
  (add-project-root "emacs-pcst-api")
  (add-project-root "emacs-tupper")
  (add-project-root "emacs-napron")
  (add-project-root "eshell-lista")
  (add-project-root "emacs-colle" '(:load-path ["lisp"]))
  (add-project-root "emacs-sis")
  (add-project-root "emacs-lab"))

;; (hoarder:register "~/.stumpwm.d/modules/util/swm-emacs")

;; (hoarder:register ("emacs-evernote-mode" "http://emacs-evernote-mode.google.com/svn/trunk"))

;;; init.el ends here
