;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package org-projectile
  :commands (org-projectile:project-todo-completing-read
             org-projectile:location-for-project)
  :preface
  (progn
    (defun org-projectile/capture (&optional arg)
      (interactive "P")
      (if arg
          (org-projectile:project-todo-completing-read nil :empty-lines 1)
        (org-projectile:capture-for-current-project nil :empty-lines 1)))

    (defun org-projectile/goto-todos ()
      (interactive)
      (org-projectile:location-for-project (projectile-project-name))))
  :config
  (progn
    (org-projectile:per-repo)
    (setq org-projectile:per-repo-filename "todo.org")))

;;; init.el ends here
