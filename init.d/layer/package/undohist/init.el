;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'undohist
  (undohist-initialize)
  (setq undohist-ignored-files '("\\.git/COMMIT_EDITMSG")))

;;; init.el ends here
