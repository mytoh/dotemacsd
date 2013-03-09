
(add-subdirs-to-load-path (concat user-emacs-directory "inits/elisp"))

(require 'flatline)
(flatline-mode 1)


(require 'r7rs)
(require 'srfi)

(provide 'init-elisp)
