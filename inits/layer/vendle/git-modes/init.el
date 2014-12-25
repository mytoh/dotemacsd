;;; init-git-modes -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'gitignore-mode
  (auto (gitignore-mode) "gitignore-mode")
  (dolist (pattern (list "/\\.gitignore\\'"
                         "/\\.git/info/exclude\\'"
                         "/git/ignore\\'"))
    (add-to-list 'auto-mode-alist (cons pattern 'gitignore-mode))))

(liby 'gitconfig-mode
  (auto (gitconfig-mode) "gitconfig-mode")
  (dolist (pattern '("/\\.gitconfig\\'" "/\\.git/config\\'"
                     "/git/config\\'"   "/\\.gitmodules\\'"))
    (add-to-list 'auto-mode-alist (cons pattern 'gitconfig-mode))))

(liby 'gitattributes-mode
  (auto (gitattributes-mode) "gitattributes-mode")
  (dolist (pattern '("/\\.gitattributes\\'"
                     "/\\.git/info/attributes\\'"
                     "/git/attributes\\'"))
    (add-to-list 'auto-mode-alist (cons pattern #'gitattributes-mode))))

;;; init-git-modes.el ends here
