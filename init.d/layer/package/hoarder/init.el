;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package hoarder
  :preface
  (progn
    (cl-labels ((escape (str)
                        (cl-prin1-to-string str))
                (gen-callback (fname url)
                              (cl-function
                               (lambda (&key data &allow-other-keys)
                                 (cl-letf ((desc (assoc-default 'description data))
                                           (topics (assoc-default 'topics data)))
                                   (insert
                                    (pcase `[,desc ,topics]
                                      (`[nil nil]
                                       (format
                                        "(%s \"%s\") "
                                        fname
                                        (seq-subseq 19)))
                                      (`[,_ ,_]
                                       (format
                                        "(%s \"%s\"
    '(:desc %s
      :tag %s))"
                                        fname
                                        (seq-subseq url 19)
                                        (escape (decode-coding-string desc 'utf-8))
                                        (colle:map (lambda (topic) (concat "\"" topic "\"" )) topics))))))))))
      (defun hoarder:github->fetch (url)
        (interactive "sUrl: ")
        (request (concat "https://api.github.com/repos/"
                         (seq-subseq url 19))
                 :headers '(("Accept" . "application/vnd.github.mercy-preview+json"))
                 :parser 'json-read
                 :sync t
                 :success (gen-callback "hoarder:fetch" url)))
      (defun hoarder:github->register (url)
        (interactive "sUrl: ")
        (request (concat "https://api.github.com/repos/"
                         (seq-subseq url 19))
                 :headers '(("Accept" . "application/vnd.github.mercy-preview+json"))
                 :parser 'json-read
                 :sync t
                 :success (gen-callback "hoarder:register" url)))))
  :config
  (progn
    (add-hook 'emacs-lisp-mode-hook
              (lambda ()
                (font-lock-add-keywords nil
                                        `((,(rx (char ?\()
                                                (0+ (any " "))
                                                "hoarder:"
                                                (or "fetch"
                                                   "register")
                                                (1+ (any " "))
                                                (group-n 2 (syntax string-delimiter)
                                                         (1+ (not (syntax string-delimiter)))
                                                         (syntax string-delimiter)))
                                           2 'font-lock-warning-face)))))))



;;; init.el ends here
