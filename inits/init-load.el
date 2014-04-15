;;; init-load.el  -*- lexical-binding: t -*-
;;;; initialize
;;;;; cl-lib
(eval-when-compile
  (require 'cl-lib))

;;;;; libs
(eval-when-compile (require 'init-lib "lib/init-lib"))
(add-subdirs-to-load-path (muki:user-emacs-directory "inits"))

;;;;; packages
(require 'init-paketti)

;;;;; config
(require 'init-config)

;;;;; system
(require 'init-system)

;;;;; lang
(require 'init-lang)

;;;;; elisp
(require 'init-elisp)

;;;;; vendle
(require 'init-vendle)

;;;;; el-get
;; (require 'init-el-get)

;;;; provide
(provide 'init-load)
