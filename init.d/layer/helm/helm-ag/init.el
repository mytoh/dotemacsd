;;; init-helm-ag.el -*- lexical-binding: t -*-

;; ag

(use-package helm-ag
  :commands (helm-do-ag)
  :preface
  (progn
    (defun muki:helm-project-do-ag ()
      "Search in current project with `ag'.
ref: [[https://github.com/syl20bnr/spacemacs/blob/develop/layers/+completion/helm/packages.el][spacemacs/packages.el at develop · syl20bnr/spacemacs · GitHub]] "
      (interactive)
      (let ((roots (project-roots (project-current))))
        (if roots
            (helm-do-ag (car roots))
          (message "error: Not in a project."))))

    ;; [[http://emacs.rubikitch.com/helm-ag/][helm-ag.el : ripgrep/projectileにも対応！最初は粗く検索、あとはどんどん絞り込め！]]
    (defun helm-ag-dot-emacs ()
      ".emacs.d以下を検索"
      (interactive)
      (helm-ag user-emacs-directory)))
  :config
  (validate-setq helm-ag-source-type 'file-line)
  (validate-setq helm-ag-insert-at-point 'symbol)

  (when (executable-find "hw")
    (validate-setq helm-ag-base-command
                   "hw --no-group --no-color")))


;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
