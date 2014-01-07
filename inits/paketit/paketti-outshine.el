;; outshine
(req 'outshine
     (add-hook 'outline-minor-mode-hook 'outshine-hook-function)

     (add-hook 'org-mode-hook
               (lambda ()
                 (req 'outline-mode-easy-bindings
                      (org-defkey org-mode-map
                                  (kbd "M-<left>") 'outline-hide-more)
                      (org-defkey org-mode-map
                                  p (kbd "M-<right>") 'outline-show-more)
                      (org-defkey org-mode-map
                                  (kbd "M-<up>") 'outline-previous-visible-heading)
                      (org-defkey org-mode-map
                                  (kbd "M-<down>") 'outline-next-visible-heading)))
               'append)
     (defvar outline-minor-mode-prefix "\M-#")
     (add-hook 'emacs-lisp-mode-hook 'outline-minor-mode)
     (add-hook 'scheme-mode-hook 'outline-minor-mode))

(provide 'paketti-outshine)
