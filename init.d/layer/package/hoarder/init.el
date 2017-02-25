;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package hoarder
  :preface
  (progn
    (cl-labels ((escape (str)
                        (prin1-to-string str)))
      (defun hoarder:github->fetch (url)
        (interactive "sUrl: ")
        (request (concat "https://api.github.com/repos/"
                         (seq-subseq url 19))
                 :params '(("key" . "value") ("key2" . "value2"))
                 :parser 'json-read
                 :sync t
                 :success (cl-function
                           (lambda (&key data &allow-other-keys)
                             (insert
                              (if (assoc-default 'description data)
                                  (format
                                   "(hoarder:fetch \"%s\"
    '(:desc %s))"

                                   (seq-subseq url 19)
                                   (escape
                                    (decode-coding-string (assoc-default 'description data)
                                                          'utf-8)))
                                (format
                                 "(hoarder:fetch \"%s\") "
                                 (seq-subseq url 19))))))))
      (defun hoarder:github->register (url)
        (interactive "sUrl: ")
        (request (concat "https://api.github.com/repos/"
                         (seq-subseq url 19))
                 :params '(("key" . "value") ("key2" . "value2"))
                 :parser 'json-read
                 :sync t
                 :success (cl-function
                           (lambda (&key data &allow-other-keys)
                             (insert
                              (if (assoc-default 'description data)
                                  (format
                                   "(hoarder:register \"%s\"
    '(:desc %s))"

                                   (seq-subseq url 19)
                                   (escape
                                    (decode-coding-string (assoc-default 'description data)
                                                          'utf-8)))
                                (format
                                 "(hoarder:register \"%s\") "
                                 (seq-subseq url 19))))))))))
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
