

;; faces
(defface fish-function-face '((t (:foreground "#9abeca"))) nil)

;; keywords
(setq fish:keyword-functions '("alias"
                               "and"
                               "funced"
                               "funcsave"
                               "bg"
                               "bind"
                               "functions"
                               "block"
                               "help"
                               "break"
                               "history"
                               "breakpoint"
                               "builtin"
                               "cd"
                               "isatty"
                               "command"
                               "jobs"
                               "commandline"
                               "math"
                               "mimedb"
                               "complete"
                               "nextd"
                               "contains"
                               "not"
                               "continue"
                               "open"
                               "count"
                               "or"
                               "popd"
                               "dirh"
                               "prevd"
                               "dirs"
                               "psub"
                               "echo"
                               "pushd"
                               "pwd"
                               "emit"
                               "random"
                               "read"
                               "eval"
                               "return"
                               "exec"
                               "set"
                               "exit"
                               "set_color"
                               "source"
                               "fg"
                               "status"
                               "fish"
                               "fish_config"
                               "test"
                               "fish_indent"
                               "trap"
                               "fish_pager"
                               "type"
                               "fish_prompt"
                               "ulimit"
                               "fish_right_prompt"
                               "umask"
                               "fish_update_completions"
                               "vared"
                               "fishd"
                               "."
                               ))
(setq fish:regexp-functions (concat "[ \t]?"
                                    (regexp-opt fish:keyword-functions t)
                                    "[ \t]+"))

(setq fish:keyword-expressions '("if"
                                 "else"
                                 "while"
                                 "switch"
                                 "case"
                                 "begin"
                                 "function"
                                 "for"
                                 "in"
                                 "end"))
(setq fish:regexp-expressions (concat
                               "[ \t]?"
                               (regexp-opt fish:keyword-expressions t)
                               "[ \t\n]+"))

(setq fish:regexp-function-name
      (rx "function" (one-or-more (in " \t\n"))
          (submatch
           (one-or-more (or word
                            (syntax symbol))))
          (in " \t\n")))

(setq fish:regexp-function-description
      (rx "function" (one-or-more (in " \t\n"))
          (one-or-more (or word
                           (syntax symbol)))
          (in " \t\n")
          (submatch
           "--"
           (one-or-more (or word
                            (syntax symbol))))))


(setq fish:regexp-variable
      (rx "$" (submatch
               (one-or-more
                (or alpha
                    alnum
                    (in "_"))))))


(setq fish:regexp-variable-definition
      (rx (: "set" (one-or-more (in " \t\n"))
             (zero-or-one (or "-" "--")
                          (one-or-more alpha))
             (zero-or-more (in " \t\n"))
             (submatch (one-or-more (or word
                                        (syntax symbol)))))))


(setq fish:regexp-comment
      (rx (: (zero-or-more space)
             "#"
             (zero-or-more (not (any "\n")))
             (in "\n"))))


;; font-lock
(setq fish:font-lock-keywords
      `((,fish:regexp-function-name 1 font-lock-variable-name-face)
        (,fish:regexp-function-description 1 font-lock-comment-face)
        (,fish:regexp-variable (1 font-lock-variable-name-face))
        (,fish:regexp-variable-definition (1 font-lock-variable-name-face))
        (,fish:regexp-comment . font-lock-comment-face)
        (,fish:regexp-expressions (1 font-lock-keyword-face))
        (,fish:regexp-functions (1 font-lock-builtin-face))))

(define-derived-mode fish-mode nil "fish"
  ;; font lock
  (setq font-lock-defaults
        '((fish:font-lock-keywords)))
  (setq-local comment-start "# ")
  (setq-local comment-start-skip "#+[\t ]*")
  (add-hook 'fish-mode-font-lock-keywords 'turn-on-font-lock))

;; fish mode recognition
(defun fish:add-fish-mode (ext)
  (add-to-list 'auto-mode-alist `(,(concat "\\." ext "\\'") . fish-mode)))
(fish:add-fish-mode "fish")

(provide 'fish-mode)
