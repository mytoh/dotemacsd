;;; init-git-modes -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'gitignore-mode
  (auto (gitignore-mode) "gitignore-mode")
  (dolist (pattern (list "/\\.gitignore\\'"
                         "/\\.git/info/exclude\\'"
                         "/git/ignore\\'"))
    (cl-pushnew (cons pattern 'gitignore-mode) auto-mode-alist)))

(liby 'gitconfig-mode
  (auto (gitconfig-mode) "gitconfig-mode")
  (dolist (pattern '("/\\.gitconfig\\'" "/\\.git/config\\'"
                     "/git/config\\'"   "/\\.gitmodules\\'"))
    (cl-pushnew (cons pattern 'gitconfig-mode) auto-mode-alist)))

(liby 'gitattributes-mode
  (auto (gitattributes-mode) "gitattributes-mode")
  (dolist (pattern '("/\\.gitattributes\\'"
                     "/\\.git/info/attributes\\'"
                     "/git/attributes\\'"))
    (cl-pushnew (cons pattern #'gitattributes-mode) auto-mode-alist)))

;;; init-git-modes.el ends here
