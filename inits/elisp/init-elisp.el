
(add-subdirs-to-load-path (concat user-emacs-directory "inits/elisp"))


(require 'r7rs)
(require 'srfi)

(require 'pretty-scheme)

(provide 'init-elisp)
