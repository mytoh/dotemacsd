;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; coffee
(liby 'coffee-mode
  (auto (coffee-mode) "coffee-mode")
  (mode "\\.coffee\\'"  #'coffee-mode)
  (mode "\\.iced\\'"  #'coffee-mode)
  (mode "Cakefile\\'"  #'coffee-mode)
  (mode "\\.cson\\'" #'coffee-mode)
  (add-to-list 'interpreter-mode-alist '("coffee" . coffee-mode)))


;;; init.el ends here
