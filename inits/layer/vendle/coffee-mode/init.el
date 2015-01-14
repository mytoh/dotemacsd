;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; coffee
(liby 'coffee-mode
  (auto (coffee-mode) "coffee-mode")
  (mode "\\.coffee\\'"  #'coffee-mode)
  (mode "\\.iced\\'"  #'coffee-mode)
  (mode "Cakefile\\'"  #'coffee-mode)
  (mode "\\.cson\\'" #'coffee-mode)
  (cl-pushnew  '("coffee" . coffee-mode) interpreter-mode-alist))


;;; init.el ends here
