;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'helm-browse
  (command (helm-browse-lines
            helm-browse-outline
            helm-browse-dired
            helm-browse-w3m-links
            helm-browse-eww-links)
           "helm-browse"))

;;; init.el ends here
