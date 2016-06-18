;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'org-cliplink
  (command (org-cliplink) "org-cliplink")
  (set-option org-cliplink-transport-implementation
              'curl))

;;; init.el ends here
