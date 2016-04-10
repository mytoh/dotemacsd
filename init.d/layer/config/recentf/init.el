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

;;;;; save list periodically
;; [[http://www.emacswiki.org/emacs?action=browse;diff=1;id=RecentFiles]]
;; (after 'recentf
;;     (run-at-time nil (* 10 60) #'recentf-save-list))

;;;;; clean up when killing emacs
(after 'recentf
    (hook 'kill-emacs-hook #'recentf-cleanup))


(hook 'find-file-hook #'recentf-save-list)

;;; init.el ends here
