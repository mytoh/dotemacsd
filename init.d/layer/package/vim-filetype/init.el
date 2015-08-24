;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'vim-filetype
  (defery 'vim-filetype)
  (after 'vim-filetype
      (command (enable-vim-filetype) "vim-filetype")
    (enable-vim-filetype)))

;;; init.el ends here
