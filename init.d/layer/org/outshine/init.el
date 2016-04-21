;; * outshine


;; [[https://github.com/tj64/outshine]]
;; Note that since version 2.0, outshine.el depends on outorg.el
;; and navi-mode.el depends on both, outshine.el and outorg.el. So the order of installation should be
;;     outorg
;;     outshine
;;     navi-mode (optional)


(liby 'outshine
  (command (outshine-hook-function) "outshine")

  (defvar outline-minor-mode-prefix (kbd "C-c"))

  (add-hook 'outline-minor-mode-hook #'outshine-hook-function)
  (after 'outshine
      (define-key outline-minor-mode-map
       (kbd "C-c C-j") #'outline-next-heading)
    (define-key outline-minor-mode-map
        (kbd "C-c C-k") #'outline-previous-heading))

  ;; (defvar outline-minor-mode-prefix "\M-#")
  (add-hook 'emacs-lisp-mode-hook #'outline-minor-mode)
  (add-hook 'scheme-mode-hook #'outline-minor-mode)
  (add-hook 'LaTeX-mode-hook #'outline-minor-mode)
  (add-hook 'picolisp-mode-hook #'outline-minor-mode)
  (add-hook 'clojure-mode-hook #'outline-minor-mode)
  (add-hook 'ess-mode-hook #'outline-minor-mode)
  (add-hook 'ledger-mode-hook #'outline-minor-mode)
  (add-hook 'message-mode-hook #'outline-minor-mode)

  (add-hook 'org-mode-hook
            (clambda ()
                ;; Redefine arrow keys, since promoting/demoting and moving
                ;; subtrees up and down are less frequent tasks then
                ;; navigation and visibility cycling
                (org-defkey org-mode-map
                 (kbd "M-<left>") #'outline-hide-more)
              (org-defkey org-mode-map
                          (kbd "M-<right>") #'outline-show-more)
              (org-defkey org-mode-map
                          (kbd "M-<up>") #'outline-previous-visible-heading)
              (org-defkey org-mode-map
                          (kbd "M-<down>") #'outline-next-visible-heading))
            'append)
  )


(provide 'init-outshine)
