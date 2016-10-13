;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; web-mode
(liby 'web-mode
  (command (web-mode) "web-mode")
  (mode "\\.phtml\\'"  #'web-mode)
  (mode "\\.tpl\\.php\\'"  #'web-mode)
  (mode "\\.[gj]sp\\'"  #'web-mode)
  (mode "\\.as[cp]x\\'"  #'web-mode)
  (mode "\\.erb\\'"  #'web-mode)
  (mode "\\.mustache\\'"  #'web-mode)
  (mode "\\.djhtml\\'"  #'web-mode)
  (mode "\\.html?\\'"  #'web-mode)
  (mode "\\.json\\'"  #'web-mode)
  (mode "\\.js\\'"  #'web-mode)
  ;; (mode "\\.css\\'" #'web-mode)
  )

;;; init.el ends here
