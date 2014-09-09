;;; init-load.el  -*- lexical-binding: t -*-
;;;; initialize
;;;;; cl-lib
(eval-when-compile
  (require 'cl-lib))

;;;;; libs
(eval-when-compile (require 'init-lib "lib/init-lib"))
(add-subdirs-to-load-path (muki:user-emacs-directory "inits"))

;;;;; system
(require 'init-system)

;;;;; vendle
(require 'init-vendle)

;;;;; config
(require 'init-config)

;;;;; packages
(require 'init-paketti)

;;;;; lang
(require 'init-lang)

;;;;; elisp
(require 'init-elisp)


;;;;; el-get
;; (require 'init-el-get)

;;;; provide
(provide 'init-load)
