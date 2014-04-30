;; helm-delicious
(req 'helm-delicious
     (req 'auth-source
          (if (file-exists-p "~/.authinfo.gpg")
              (setq auth-sources '((:source "~/.authinfo.gpg" :host t :protocol t)))
            (setq auth-sources '((:source "~/.authinfo" :host t :protocol t))))))

(provide 'paketti-helm-delicious)
