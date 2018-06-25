;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package cperl-mode
  :commands (cperl-mode)
  :mode
  (("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode)
   ("\\.t\\'" . cperl-mode)
   ("Daikufile" . cperl-mode)
   ("Rexfile" . cperl-mode)
   ("\\.rex\\'" . cperl-mode))
  :interpreter
  (("perl" . cperl-mode)
   ("perl5" . cperl-mode)
   ("miniperl" . cperl-mode))
  :preface
  (defun spacemacs//perl5-smartparens-enable ()
    (define-key cperl-mode-map "{" nil))
  (defun spacemacs//perl5-spartparens-disable ()
    (define-key cperl-mode-map "{" 'cperl-electric-lbrace))
  (defun perl5/post-init-smartparens ()
    ;; fixs a bug with electric mode and smartparens https://github.com/syl20bnr/spacemacs/issues/480
    (with-eval-after-load 'cperl-mode
      (add-hook 'smartparens-enabled-hook 'spacemacs//perl5-smartparens-enable)
      (add-hook 'smartparens-disabled-hook 'spacemacs//perl5-spartparens-disable)))
  (defun my-cperl-eldoc-documentation-function ()
    "Return meaningful doc string for `eldoc-mode'.
[[https://www.emacswiki.org/emacs/CPerlMode#toc10][EmacsWiki: C Perl Mode]]"
    (car
     (let ((cperl-message-on-help-error nil))
       (cperl-get-help))))
  :init
  (setq cperl-auto-newline nil)
  (setq cperl-highlight-variables-indiscriminately t)
  (setq cperl-indent-parens-as-block t)

  ;; (setq cperl-hairy t)
  ;; (setq cperl-font-lock t)
  ;; cperl-electric-lbrace-space
  ;; cperl-electric-parens
  ;; cperl-electric-linefeed
  ;; cperl-electric-keywords
  ;; cperl-info-on-command-no-prompt
  ;; cperl-clobber-lisp-bindings
  ;; cperl-lazy-help-time

  (after 'smartparens
    (perl5/post-init-smartparens))

  :config
  (add-hook 'cperl-mode-hook
            #'smartparens-mode)
  ;; (add-hook 'cperl-mode-hook
  ;;           #'evil-cleverparens-mode)
  (defalias 'perl-mode 'cperl-mode)

  ;; (add-hook 'cperl-mode-hook 'turn-on-pretty-mode)
  (after 'pretty-mode
    (add-to-list 'pretty-modes-aliases
                 '(cperl-mode . perl-mode))
    (pretty-compile-patterns
     '((?\⇛  :Rightarrow (:arrows)
         (:=> "=>" perl)))))
  (add-hook 'cperl-mode-hook
            (lambda ()
              (set (make-local-variable 'eldoc-documentation-function)
                   'my-cperl-eldoc-documentation-function)))

  (add-hook  'cperl-mode-hook
             (lambda ()
               (when (require 'auto-complete nil t) ; no error whatever auto-complete.el is not installed.
                 (auto-complete-mode t)
                 (make-variable-buffer-local 'ac-sources)
                 (setq ac-sources
                       '(ac-source-perl-completion)))))
  ;; (add-hook 'cperl-mode-hook
  ;;           (lambda ()
  ;;             (evil-cleverparens-mode)
  ;;             (setq-local evil-cp-pair-list
  ;;                         (cons
  ;;                          '("'" . "'")
  ;;                          evil-cp-pair-list))))
  (if (functionp 'highlight-operators-mode)
      (add-hook 'cperl-mode-hook #'highlight-operators-mode))

  (add-hook 'cperl-mode-hook
            (lambda ()
              (if (commandp 'rainbow-delimiters-mode)
                  (rainbow-delimiters-mode))))
  (add-hook 'cperl-mode-hook
            (lambda ()
              (if (commandp 'symbol-overlay-mode)
                  (symbol-overlay-mode))))
  ;; highlight indentation
  ;; (add-hook 'cperl-mode-hook
  ;;           (lambda ()
  ;;             (if (commandp 'highlight-indent-guides-mode)
  ;;                 (highlight-indent-guides-mode))))

  (defun muki:cperl-font-lock-general ()
    (font-lock-add-keywords nil
                            '(("\\_<say\\_>" . cperl-nonoverridable-face)
                              ("->\\_<\\([a-z_]+\\)\\_>" 1 font-lock-function-name-face nil 'laxmatch)
                              ("\\_<\\(?:use\\|package\\)\\_>\\s-+"
                               ("\\([a-zA-Z0-9]+\\)\\(?:::\\)?"
                                (let ((maybe-end-of-compile-sub
                                       (save-mark-and-excursion
                                         (re-search-forward "\\(\\s-+\\|;\\)" (line-end-position) 'noerror))))
                                  (if maybe-end-of-compile-sub
                                      maybe-end-of-compile-sub
                                    nil))
                                nil
                                (1 font-lock-function-name-face nil 'laxmatch))
                               ))))
  (add-hook 'cperl-mode-hook
            #'muki:cperl-font-lock-general)

  (defun muki:cperl-font-lock-type-tiny ()
    (save-mark-and-excursion
      (goto-char (point-min))
      (when (re-search-forward "use\\s-+Type::Utils" nil t)
        (let ((type-tiny-symbols `(,(regexp-opt
                                     '("declare" "as" "where" "message" "inline_as"
                                       "class_type" "role_type" "duck_type" "union" "intersection" "enum"
                                       "coerce" "from" "via"
                                       "declare_coercion" "to_type"
                                       "extends" "type" "subtype"
                                       "match_on_type" "compile_match_on_type"
                                       "dwim_type" "english_list"
                                       "classifier")
                                     'symbols)
                                   . cperl-nonoverridable-face))
              (type-tiny-type-names `(,(concat (regexp-opt
                                                '("declare" "as" "class_type" "role_type" "duck_type"
                                                  "union" "intersection" "enum"
                                                  "coerce" "from"
                                                  "declare_coercion" "to_type"
                                                  "extends" "type" "subtype")
                                                'symbols)
                                               "\\s-+\\_<\\([a-zA-z]+\\)\\_>")
                                      2 font-lock-type-face t nil)))
          (font-lock-add-keywords nil `(,type-tiny-symbols
                                        ,type-tiny-type-names))))))
  (add-hook 'cperl-mode-hook
            #'muki:cperl-font-lock-type-tiny)

  ;; [[https://www.gnu.org/software/emacs/manual/html_node/elisp/Search_002dbased-Fontification.html][Search-based Fontification - GNU Emacs Lisp Reference Manual]]
  (defun muki:cperl-font-lock-type-params ()
    (save-mark-and-excursion
      (goto-char (point-min))
      (when (re-search-forward "use\\s-+Type::Params" nil t)
        (let ((type-tiny-type-names `("\\_<\\(compile\\)\\_>(" (1 cperl-nonoverridable-face nil)
                                      ("[^$@%]?\\_<\\([A-Z][a-zA-Z]+\\)\\_>,?"
                                       (let ((maybe-end-of-compile-sub
                                              (save-mark-and-excursion
                                                (search-forward ")" (line-end-position) 'noerror))))
                                         (if maybe-end-of-compile-sub
                                             maybe-end-of-compile-sub
                                           nil))
                                       nil
                                       (1 font-lock-type-face nil t))
                                      )))
          (font-lock-add-keywords nil `(,type-tiny-type-names))))))
  (add-hook 'cperl-mode-hook
            #'muki:cperl-font-lock-type-params)

  (add-hook 'cperl-mode-hook
            (lambda ()
              (add-hook 'before-save-hook
                        #'delete-trailing-whitespace nil t)))


  ;; flycheck
  ;; [[https://m0t0k1ch1st0ry.com/blog/2014/07/07/flycheck/][flycheck しながら Perl を描くときに · m0t0k1ch1st0ry]]
  (after 'flycheck
    (flycheck-define-checker perl-project-libs
      "A perl syntax checker."
      :command ("perl"
                "-MProject::Libs lib_dirs => [qw(local/lib/perl5)]"
                "-wc"
                source-inplace)
      :error-patterns ((error line-start
                              (minimal-match (message))
                              " at " (file-name) " line " line
                              (or "." (and ", " (zero-or-more not-newline)))
                              line-end))
      :modes (cperl-mode))

    (add-hook 'cperl-mode-hook
              (lambda ()
                (flycheck-mode t)
                (setq flycheck-checker 'perl-project-libs)
                ;; (flycheck-add-next-checker 'perl-project-libs 'perl-perlcritic)
                ))
    )

  (add-hook 'cperl-mode-hook
            #'highlight-numbers-mode)
  (add-hook 'cperl-mode-hook
            (lambda ()
              (add-hook 'before-save-hook
                        #'muki:indent-buffer nil t)))


  (bind-map my-cperl-leader-map
    :evil-keys ("SPC m" ",")
    :evil-states (normal)
    :major-modes (cperl-mode
                  perl-mode))
  (bind-map-set-keys my-cperl-leader-map
    "hl" #'helm-perldoc)
  )

;;; init.el ends here
