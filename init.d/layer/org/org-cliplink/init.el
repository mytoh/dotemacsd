;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'org-cliplink
  (command (org-cliplink) "org-cliplink")
  (after 'org-cliplink
      (validate-setq org-cliplink-transport-implementation
       'curl)
    (validate-setq org-cliplink-max-length 120)))

;;; init.el ends here
