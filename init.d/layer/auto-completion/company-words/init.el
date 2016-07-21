;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(after 'company
  (req 'company-en-words
    (company-en-words-enable)
    (add-to-list 'company-backends 'company-en-words)))

;;; init.el ends here
