;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; vimrc
(liby 'vimrc-mode
  (auto (vimrc-mode) "vimrc-mode")
  (mode "\\.vim\\'" 'vimrc-mode)
  (mode "[._]?g?vimrc\\'"  'vimrc-mode)
  (mode "\\.exrc\\'"  'vimrc-mode))


;;; init.el ends here
