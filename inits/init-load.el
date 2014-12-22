;;; init-load.el  -*- lexical-binding: t -*-
;;;; initialize
;;;;; cl-lib
(eval-when-compile
  (require 'cl-lib))
(require 'seq)

;;;;; libs
(eval-when-compile (require 'init-lib "lib/init-lib"))
(add-subdirs-to-load-path (muki:user-emacs-directory "inits"))

(require 'muki)

;;;;; system
(muki:layer-load-layers 'system
  '(freebsd darwin))

;;;;; vendle
(require 'init-vendle)

;;;;; config
(muki:layer-load-layers 'config
  '(setting
    key
    hook
    path
    face
    clipboard
    font
    erc
    eshell
    eshell-prompt
    whitespace
    autoinsert
    dired
    ;; eww
    newsticker
    rcirc
    tramp))

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
