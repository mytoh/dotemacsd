;;; init-paradox -*- lexical-binding: t -*-

;;; Code:

(liby 'paradox
  (auto (paradox-list-packages) "paradox")

  ;; [[github.com/syl20bnr/spacemacs/contrib/paradox]]
  (cl-defun muki:paradox-list-packages ()
    "Load depdendencies for auth and open the package list."
    (interactive)
    (require 'epa-file)
    (require 'auth-source)
    (when (and (not (boundp 'paradox-github-token))
               (file-exists-p "~/.authinfo.gpg"))
      (let ((authinfo-result (car (auth-source-search
                                   :max 1
                                   :host "github.com"
                                   :port "paradox"
                                   :user "paradox"
                                   :require '(:secret)))))
        (let ((paradox-token (plist-get authinfo-result :secret)))
          (setq paradox-github-token (if (functionp paradox-token)
                                         (funcall paradox-token)
                                       paradox-token)))))
    (paradox-list-packages nil)))

;;; init-paradox.el ends here
