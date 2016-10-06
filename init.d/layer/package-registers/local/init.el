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
  (add-project-root "helm-yplistener" '(:tag "helm"
                                        :load-path ["lisp"]))
  (add-project-root "company-scheme" '(:tag ["company" "scheme"]))
  (add-project-root "emacs-scheme-keywords" '(:tag "scheme"))
  (add-project-root "emacs-lehtifile-mode")
  (add-project-root "emacs-navi2ch-file-mode" '(:tag "navi2ch"))
  ;; (add-project-root "emacs-eshell-switch" '(:tag "eshell"))
  (add-project-root "emacs-mesh" '(:tag "eshell"))
  (add-project-root "emacs-eshell-alias" '(:tag "eshell"))
  (add-project-root "helm-project-buffer" '(:tag "helm"))
  (add-project-root "emacs-eshellar" '(:tag ["eshell" "shellar"]))
  (add-project-root "emacs-hoarder" '(:load-path nil
                                      :tag ["package"]))
  (add-project-root "helm-features" '(:tag ["emacs-lisp"]))
  (add-project-root "helm-eww-bookmark" '(:tag ["helm" "eww"]))
  (add-project-root "helm-eww-history" '(:tag ["helm" "eww"]))
  (add-project-root "helm-eww-search-engine" '(:tag ["helm" "eww"]))
  (add-project-root "helm-eshell-jump" '(:tag ["helm" "eshell"]))
  (add-project-root "emacs-glof" '(:tag ["plist" "utility"]))
  (add-project-root "emacs-fridge" )
  (add-project-root "emacs-pcst-api")
  (add-project-root "emacs-tupper")
  (add-project-root "emacs-napron")
  (add-project-root "eshell-lista")
  (add-project-root "emacs-colle" '(:load-path ["lisp"]))
  (add-project-root "emacs-sis"))

;; (hoarder:register "~/.stumpwm.d/modules/util/swm-emacs")

;; (hoarder:register ("emacs-evernote-mode" "http://emacs-evernote-mode.google.com/svn/trunk"))

;;; init.el ends here
