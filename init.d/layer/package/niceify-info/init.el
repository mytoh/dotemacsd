;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'niceify-info
  (command (niceify-info) "niceify-info")
  (add-hook 'Info-selection-hook
            #'niceify-info))

;;; init.el ends here
