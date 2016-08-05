;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'gitlab
  (command (gitlab-login) "gitlab")
  (command (helm-gitlab-projects) "helm-gitlab")
  (after 'gitlab
      (cl-letf ((privatefile (expand-file-name
                              "private/gitlab.el"
                              user-emacs-directory)))
        (when (file-exists-p privatefile)
          (load privatefile)))))

;;; init.el ends here
