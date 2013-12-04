;; * initialize

;; ** cl-lib
(eval-when-compile
  (require 'cl-lib))

;; ** libs
(add-to-list 'load-path (concat user-emacs-directory "inits/lib"))
(eval-when-compile (require 'init-lib))
(add-subdirs-to-load-path (concat user-emacs-directory "inits"))

;; ** packages
(require 'init-paketti)

;; ** config
(require 'init-config)

;; ** system
(require 'init-system)

;; ** lang
(require 'init-lang)

;; ** elisp
(require 'init-elisp)


(provide 'init-load)
