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
                                 (let-alist data
                                   (insert
                                    (pcase (vector .description .topics)
                                      (`[nil []]
                                       (format
                                        "(%s \"%s\") "
                                        fname
                                        (seq-subseq url 19)))
                                      (`[nil ,_]
                                       (format
                                        "(%s \"%s\"
    '(:tags %s))\n"
                                        fname
                                        (seq-subseq url 19)
                                        (colle:map (lambda (topic) (concat "\"" topic "\"" )) topics)))
                                      (`[,desc  []]
                                       (format
                                        "(%s \"%s\"
    '(:description %s))\n"
                                        fname
                                        (seq-subseq url 19)
                                        (escape (decode-coding-string desc 'utf-8))))
                                      (`[,desc ,topics]
                                       (format
                                        "(%s \"%s\"
    '(:description %s
      :tags %s))\n"
                                        fname
                                        (seq-subseq url 19)
                                        (escape (decode-coding-string desc 'utf-8))
                                        (colle:map (lambda (topic) (concat "\"" topic "\"" )) topics))))))))))
      (defun hoarder:insert-helper-github (command url)
        (request (concat "https://api.github.com/repos/"
                         (seq-subseq url 19))
                 :headers '(("Accept" . "application/vnd.github.mercy-preview+json"))
                 :parser 'json-read
                 :sync t
                 :success (gen-callback (concat "hoarder:" command) url)))

      ;;  #; curl 'https://gitgud.io/api/v4/projects/nixx%2Fuguu'
      ;; {"id":3206,"description":"it's uguu.se but in Go","default_branch":"master","tag_list":[],"ssh_url_to_repo":"git@ssh.gitgud.io:nixx/uguu.git","http_url_to_repo":"https://gitgud.io/nixx/uguu.git","web_url":"https://gitgud.io/nixx/uguu","name":"uguu","name_with_namespace":"nixx / uguu","path":"uguu","path_with_namespace":"nixx/uguu","star_count":0,"forks_count":1,"created_at":"2016-12-20T11:18:11.452Z","last_activity_at":"2017-01-17T20:20:53.274Z"}~/.emacs.d/vendor/git.sv.gnu.org/emacs.git  emacs-26
      (defun hoarder:insert-gitlab-internal (command repourl requrl)
        (request requrl
                 :parser 'json-read
                 :sync t
                 :success
                 (cl-function
                  (lambda (&key data &allow-other-keys)
                    (let-alist data
                      (insert
                       (format "(hoarder:%s \"%s\"
    '(:description \"%s\"
      :tags %s))\n"
                               command
                               (pcase repourl ((and u
                                              (rx ".git"))
                                           u)
                                  (u
                                   (concat u ".git")))
                               (if .description .description "")
                               (colle:map (lambda (tag) (concat "\"" tag "\"")) (if .tag_list .tag_list [])))))))))
      (defun hoarder:insert-helper-gitlab (command url)
        (hoarder:insert-gitlab-internal
         command
         url
         (concat "https://gitlab.com/api/v4/projects/"
                 (url-hexify-string
                  (string-trim (subseq url 19) nil ".git")))))
      (defun hoarder:insert-helper-gitgud (command url)
        (hoarder:insert-gitlab-internal
         command
         url
         (concat "https://gitgud.io/api/v4/projects/"
                 (url-hexify-string (pcase url ((and u
                                               (rx ".git"))
                                            (subseq (subseq u 18)
                                                    0 -4))
                                       (u
                                        (subseq u 18)))))))
      (defun hoarder:insert-helper-gitlain (command url)
        (hoarder:insert-gitlab-internal
         command
         url
         (concat "https://gitla.in/api/v4/projects/"
                 (url-hexify-string (pcase url ((and u
                                               (rx ".git"))
                                            (subseq (subseq u 17)
                                                    0 -4))
                                       (u
                                        (subseq u 17)))))))
      (defun hoarder:insert-helper-register (url)
        (interactive "sUrl: ")
        (pcase url
          ((rx "gitgud.io")
           (hoarder:insert-helper-gitgud "register" url))
          ((rx "github.com")
           (hoarder:insert-helper-github "register" url))
          ((rx "gitlab.com")
           (hoarder:insert-helper-gitlab "register" url))
          ((rx "gitla.in")
           (hoarder:insert-helper-gitlain "fetch" url))))
      (defun hoarder:insert-helper-fetch (url)
        (interactive "sUrl: ")
        (pcase url
          ((rx "gitgud.io")
           (hoarder:insert-helper-gitgud "fetch" url))
          ((rx "github.com")
           (hoarder:insert-helper-github "fetch" url))
          ((rx "gitlab.com")
           (hoarder:insert-helper-gitlab "fetch" url))
          ((rx "gitla.in")
           (hoarder:insert-helper-gitlain "fetch" url))))
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
