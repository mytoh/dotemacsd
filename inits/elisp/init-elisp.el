
(add-subdirs-to-load-path (concat user-emacs-directory "inits/elisp"))


(req 'r7rs)
(req 'srfi)

(req 'fish-mode)

(req 'pretty-scheme
     (add-hook 'scheme-mode-hook 'turn-on-pretty-scheme-mode))

(provide 'init-elisp)
