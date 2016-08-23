;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(after 'org
    (after 'evil
    (req 'syndicate
      (evil-define-key 'normal syndicate-mode-map
        "o" #'evil-open-below))))

;;; init.el ends here
