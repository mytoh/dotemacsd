;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;; [[http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/]]
(after 'expand-region
    (evil-global-set-key 'visual "v"
     #'er/expand-region)
  (evil-global-set-key 'visual (kbd "C-v")
                       #'er/contract-region))

;;; init.el ends here
