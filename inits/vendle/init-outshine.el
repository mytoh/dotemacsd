;;; outshine

(defvar outline-minor-mode-prefix (kbd "C-c"))

(liby 'outshine
  (auto (outshine-hook-function
         outline-hide-more
         outline-show-more
         outline-previous-visible-heading
         outline-next-visible-heading)
        "outshine")
  (add-hook 'outline-minor-mode-hook 'outshine-hook-function)

  ;; (defvar outline-minor-mode-prefix "\M-#")
  (add-hook 'emacs-lisp-mode-hook 'outline-minor-mode)
  (add-hook 'scheme-mode-hook 'outline-minor-mode)
  (add-hook 'LaTeX-mode-hook 'outline-minor-mode)
  (add-hook 'picolisp-mode-hook 'outline-minor-mode)
  (add-hook 'clojure-mode-hook 'outline-minor-mode)
  (add-hook 'ess-mode-hook 'outline-minor-mode)
  (add-hook 'ledger-mode-hook 'outline-minor-mode)
  (add-hook 'message-mode-hook 'outline-minor-mode)

    (add-hook 'org-mode-hook
            (lambda ()
              ;; Redefine arrow keys, since promoting/demoting and moving
              ;; subtrees up and down are less frequent tasks then
              ;; navigation and visibility cycling
              (org-defkey org-mode-map
                          (kbd "M-<left>") 'outline-hide-more)
              (org-defkey org-mode-map
                          (kbd "M-<right>") 'outline-show-more)
              (org-defkey org-mode-map
                          (kbd "M-<up>") 'outline-previous-visible-heading)
              (org-defkey org-mode-map
                          (kbd "M-<down>") 'outline-next-visible-heading))
            'append)
  )


(provide 'init-outshine)
