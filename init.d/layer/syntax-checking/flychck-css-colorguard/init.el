;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(after 'flycheck
    (req 'flycheck-css-colorguard)
  (flycheck-add-next-checker 'css-csslint
                             'css-colorguard 'append))

;;; init.el ends here
