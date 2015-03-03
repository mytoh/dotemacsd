;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;; recentf
;; save more recent files
(set-option recentf-max-saved-items nil)
(defvar muki:recentf-exclude `(,(rx  ".el.gz" string-end)
                                "archive-contents\\'"
                                "-autoloads\\.el\\'"
                                "/elpa/"
                                "COMMIT_EDITMSG"
                                ".gz"
                                "/ssh:"
                                "/scp:"
                                "/sudo:"))
(set-option recentf-exclude muki:recentf-exclude)
;; (set-option recentf-auto-cleanup 10)

;;;;; exclude tramp files
;; [[http://d.hatena.ne.jp/daimatz/20110529/1306602969]]
(cl-pushnew "^/[^/:]+:" recentf-exclude)

;;; init.el ends here
