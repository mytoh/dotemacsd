;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'helm-org-rifle
  (command (helm-org-ifle
            helm-org-rifle-current-buffer
            helm-org-rifle-files
            helm-org-rifle-directories)
           "helm-org-rifle"))

;;; init.el ends here
