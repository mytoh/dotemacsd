;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; smeargle
(use-package smeargle
  :commands (smeargle-clear smeargle smeargle-commits) 

  :init
  (progn 
    ;; (global-set-key (kbd "C-x v s") 'smeargle)
    ;; (global-set-key (kbd "C-x v c") 'smeargle-commits)

    ;; Highlight regions at opening file
    ;; (add-hook 'find-file-hook 'smeargle)

    ;; Updating after save buffer
    ;; (add-hook 'after-save-hook 'smeargle))
    )

;;; init.el ends here
