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
                                      (`[nil []]
                                       (format
                                        "(%s \"%s\") "
                                        fname
                                        (seq-subseq url 19)))
                                      (`[nil ,_]
                                       (format
                                        "(%s \"%s\"
    '(:tag %s))\n"
                                        fname
                                        (seq-subseq url 19)
                                        (colle:map (lambda (topic) (concat "\"" topic "\"" )) topics)))
                                      (`[,_ []]
                                       (format
                                        "(%s \"%s\"
    '(:desc %s))\n"
                                        fname
                                        (seq-subseq url 19)
                                        (escape (decode-coding-string desc 'utf-8))))
                                      (`[,_ ,_]
                                       (format
                                        "(%s \"%s\"
    '(:desc %s
      :tag %s))\n"
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
                 :success (gen-callback "hoarder:register" url)))

      ;;  #; curl 'https://gitgud.io/api/v4/projects/nixx%2Fuguu'
      ;; {"id":3206,"description":"it's uguu.se but in Go","default_branch":"master","tag_list":[],"ssh_url_to_repo":"git@ssh.gitgud.io:nixx/uguu.git","http_url_to_repo":"https://gitgud.io/nixx/uguu.git","web_url":"https://gitgud.io/nixx/uguu","name":"uguu","name_with_namespace":"nixx / uguu","path":"uguu","path_with_namespace":"nixx/uguu","star_count":0,"forks_count":1,"created_at":"2016-12-20T11:18:11.452Z","last_activity_at":"2017-01-17T20:20:53.274Z"}~/.emacs.d/vendor/git.sv.gnu.org/emacs.git  emacs-26
      (defun hoarder:gitgud->register (url)
        (interactive "sUrl: ")
        (request (concat "https://gitgud.io/api/v4/projects/"
                         (url-hexify-string (pcase url ((and u
                                                       (rx ".git"))
                                                    (subseq (subseq u 18)
                                                            0 -4))
                                               (u
                                                (subseq u 18)))))
                 :parser 'json-read
                 :sync t
                 :success
                 (cl-function
                  (lambda (&key data &allow-other-keys)
                    (cl-letf ((desc (assoc-default 'description data))
                              (taglist (assoc-default 'tag_list data)))
                      (insert
                       (format "(hoarder:register \"%s\"
'(:desc \"%s\"
:tag %s))\n"
                               (pcase url ((and u
                                          (rx ".git"))
                                       u)
                                  (u
                                   (concat u ".git")))
                               desc
                               (colle:map (lambda (tag) (concat "\"" tag "\"")) taglist))))))))
      (defun hoarder:gitgud->fetch (url)
        (interactive "sUrl: ")
        (request (concat "https://gitgud.io/api/v4/projects/"
                         (url-hexify-string (pcase url ((and u
                                                       (rx ".git"))
                                                    (subseq (subseq u 18)
                                                            0 -4))
                                               (u
                                                (subseq u 18)))))
                 :parser 'json-read
                 :sync t
                 :success
                 (cl-function
                  (lambda (&key data &allow-other-keys)
                    (cl-letf ((desc (assoc-default 'description data))
                              (taglist (assoc-default 'tag_list data)))
                      (insert
                       (format "(hoarder:fetch \"%s\"
'(:desc \"%s\"
:tag %s))\n"
                               (pcase url ((and u
                                          (rx ".git"))
                                       u)
                                  (u
                                   (concat u ".git")))
                               desc
                               (colle:map (lambda (tag) (concat "\"" tag "\"")) taglist))))))))
      ))
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
