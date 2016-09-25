;;; init-helm-ag.el -*- lexical-binding: t -*-

;; ag
(liby 'helm-ag
  (command (helm-do-ag) "helm-ag")
  (set-option helm-ag-source-type 'file-line)
  (setq helm-ag-insert-at-point 'symbol)

  ;; (setq helm-ag-base-command
  ;;       "hw --no-group --no-color")
  (defun muki:helm-project-do-ag ()
    "Search in current project with `ag'.
ref: [[https://github.com/syl20bnr/spacemacs/blob/develop/layers/+completion/helm/packages.el][spacemacs/packages.el at develop · syl20bnr/spacemacs · GitHub]] "
    (interactive)
    (let ((roots (project-roots (project-current))))
      (if roots
          (helm-do-ag (car roots))
        (message "error: Not in a project."))))
  )


;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
