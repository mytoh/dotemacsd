;;; lang-elisp.el -*- lexical-binding: t -*-

(require 'muki)

(cl-pushnew '("\\.emacs-w3m\\'" .  emacs-lisp-mode)
            auto-mode-alist)

(cl-defun muki:elisp-add-keywords (face-name keyword-rules)
  (cl-letf* ((keyword-list (colle:map (pcase-lambda (`(,_ . ,x))
                                     (symbol-name x))
                                   keyword-rules))
             (keyword-regexp (concat "(\\("
                                     (regexp-opt keyword-list)
                                     "\\)[ \n]")))
    (font-lock-add-keywords  'emacs-lisp-mode
                             `((,keyword-regexp 1 ',face-name))))
  (seq-each (pcase-lambda (`(,indent . ,keyword))
              (put keyword
                   'scheme-indent-function
                   indent))
            keyword-rules))


(muki:elisp-add-keywords
 'font-lock-builtin-face
 '((1 . setq)
   (1 . if)
   (1 . hook)
   (1 . add-hook)
   (1 . lambda)
   (1 . add-to-list)
   (1 . font-lock-add-keywords)
   (1 . submatch)
   (1 . set-option)
   (1 . enable-option)
   (1 . disable-option)
   (1 . enable-mode)
   (1 . disable-mode)
   (1 . or)))

(muki:elisp-add-keywords
 'font-lock-keyword-face
 '((1 . define-key)
   (1 . provide)
   (1 . require)
   (1 . req)
   (1 . define-emms-simple-player)
   (1 . liby)
   (1 . pak)
   (1 . after)
   (1 . defun-add-hook)))

(font-lock-add-keywords
 'emacs-lisp-mode
 `((,(rx (* space) (syntax open-parenthesis) (* space)
         (or "cl-defun" "cl-defmacro")
         (+ space)
         (submatch (+ (or (syntax word)
                         (syntax symbol)))))
    (1 'font-lock-function-name-face))))

;; [[https://groups.google.com/forum/#!topic/gnu.emacs.help/3EoQjpr5Kfk]]
;; [[http://user.it.uu.se/~embe8573/captain-mr-king.el]]
(font-lock-add-keywords 'emacs-lisp-mode
                        '(("font-lock-builtin-face"              .  font-lock-builtin-face)
                          ("font-lock-comment-delimiter-face"    .  font-lock-comment-delimiter-face)
                          ("font-lock-comment-face"              .  font-lock-comment-face)
                          ("font-lock-constant-face"             .  font-lock-constant-face)
                          ("font-lock-doc-face"                  .  font-lock-doc-face)
                          ("font-lock-function-name-face"        .  font-lock-function-name-face)
                          ("font-lock-keyword-face"              .  font-lock-keyword-face)
                          ("font-lock-negation-char-face"        .  font-lock-negation-char-face)
                          ("font-lock-preprocessor-face"         .  font-lock-preprocessor-face)
                          ("font-lock-reference-face"            .  font-lock-reference-face)
                          ("font-lock-string-face"               .  font-lock-string-face)
                          ("font-lock-syntactic-face-function"   .  font-lock-syntactic-face-function)
                          ("font-lock-type-face"                 .  font-lock-type-face)
                          ("font-lock-variable-name-face"        .  font-lock-variable-name-face)
                          ("font-lock-warning-face"              .  font-lock-warning-face)
                          ("font-lock-regexp-grouping-construct" . 'font-lock-regexp-grouping-construct)
                          ("font-lock-regexp-grouping-backslash" . 'font-lock-regexp-grouping-backslash))
                        t) ; HOW (append to highlighting list, i.e., keep old

(cl-defun muki:elisp-buffer-enable-reindent ()
  (muki:add-hook-local 'before-save-hook #'muki:lisp-cleanup)
  (muki:add-hook-local 'before-save-hook #'muki:indent-buffer))

(cl-defun muki:elisp-check-parens ()
  (muki:add-hook-local 'after-save-hook #'check-parens))


(cl-defun muki:elisp-byte-compile-buffer ()
  (add-hook 'after-save-hook #'muki:byte-compile-current-buffer nil t))

(cl-defun muki:elisp-find-provided-feature ()
  (cl-letf ((bs (buffer-string)))
    (with-temp-buffer
      (insert bs)
      (goto-char (point-min))
      (re-search-forward
       (rx line-start
           (0+ (any " "))
           (char ?\()
           "provide"
           (1+ (any " "))
           ?\'
           (group (1+ (or alphanumeric
                         ?\-)))
           (0+ (any " "))
           (char ?\)))
       nil t)
      (match-string-no-properties 1))))

(cl-defun muki:elisp-reload-package ()
  (when (and (eq major-mode 'emacs-lisp-mode)
           (buffer-file-name))
    (cl-letf* ((file-name (buffer-file-name))
               (base-name (intern (file-name-base file-name)))
               (found-feature (muki:elisp-find-provided-feature))
               (feature (if found-feature
                            (intern found-feature)
                          nil)))
      (cond ((featurep feature)
             (unload-feature feature 'force)
             (require feature file-name)
             (message "feature %s reloaded" feature))
            ((featurep base-name)
             (unload-feature base-name 'force)
             (require base-name file-name)
             (message "feature %s reloaded" base-name))))))

;;; highlight old cl functions
;;; [[https://yoo2080.wordpress.com/2013/08/12/highlighting-old-style-cl-function-names-in-emacs-lisp/][highlighting old style CL function names in Emacs Lisp | Yoo Box]]
(defconst my-old-style-cl-functions
  '(acons adjoin assert assoc* assoc-if assoc-if-not block caaaar caaadr
          caaar caadar caaddr caadr cadaar cadadr cadar caddar cadddr caddr
          callf callf2 case cdaaar cdaadr cdaar cdadar cdaddr cdadr cddaar
          cddadr cddar cdddar cddddr cdddr ceiling* check-type coerce
          compiler-macroexpand concatenate copy-list copy-seq count count-if
          count-if-not decf declaim define-compiler-macro define-modify-macro
          define-setf-expander define-setf-method defmacro* defsetf defstruct
          defsubst* deftype defun* delete* delete-duplicates delete-if
          delete-if-not destructuring-bind do do* do-all-symbols do-symbols
          ecase eighth endp equalp etypecase eval-when evenp every fifth fill
          find find-if find-if-not first flet floatp-safe floor* fourth
          function* gcd gensym gentemp get* getf incf intersection isqrt labels
          lcm ldiff letf letf* lexical-let lexical-let* list* list-length
          load-time-value locally loop macrolet make-random-state map mapcan
          mapcar* mapcon mapl maplist member* member-if member-if-not merge
          minusp mismatch mod* multiple-value-apply multiple-value-bind
          multiple-value-call multiple-value-list multiple-value-setq
          nintersection ninth notany notevery nreconc nset-difference
          nset-exclusive-or nsublis nsubst nsubst-if nsubst-if-not nsubstitute
          nsubstitute-if nsubstitute-if-not nth-value nunion oddp pairlis plusp
          position position-if position-if-not proclaim progv psetf psetq
          pushnew random* random-state-p rassoc* rassoc-if rassoc-if-not reduce
          rem* remf remove* remove-duplicates remove-if remove-if-not remprop
          replace rest return return-from revappend rotatef round* search second
          set-difference set-exclusive-or seventh shiftf signum sixth some sort*
          stable-sort sublis subseq subsetp subst subst-if subst-if-not
          substitute substitute-if substitute-if-not svref symbol-macrolet tailp
          tenth the third tree-equal truncate* typecase typep union values
          values-list))
(defconst my-rx-old-style-cl-functions
  (eval `(rx bow (or ,@(mapcar #'symbol-name my-old-style-cl-functions)) eow)))
(with-eval-after-load 'lisp-mode
  (req 'flyspell ; for the flyspell-incorrect face
    (font-lock-add-keywords 'emacs-lisp-mode
                            `((,my-rx-old-style-cl-functions . 'flyspell-incorrect)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; highlight special variable without hyphen in its name
;; These should not be used as names of lexically scoped variables.
;; [[https://yoo2080.wordpress.com/2013/08/07/built-in-special-variables-with-simple-names-in-emacs-lisp/][built-in special variables with simple names in Emacs Lisp | Yoo Box]]
(with-eval-after-load 'lisp-mode
  (defconst my-special-variables-without-hyphen
    '(debugger features nil noninteractive obarray)
    "list of special variables with names without hyphen")
  (defconst my-regexp-special-variables-without-hyphen
    (eval `(rx bow (or ,@(mapcar #'symbol-name my-special-variables-without-hyphen)) eow)))
  (font-lock-add-keywords 'emacs-lisp-mode
                          `((,my-regexp-special-variables-without-hyphen . font-lock-keyword-face))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (add-hook 'emacs-lisp-mode-hook #'muki:elisp-byte-compile-buffer)
(add-hook 'emacs-lisp-mode-hook #'muki:elisp-buffer-enable-reindent)
(add-hook 'emacs-lisp-mode-hook #'muki:elisp-check-parens)
(add-hook 'emacs-lisp-mode-hook #'checkdoc-minor-mode)
(add-hook 'emacs-lisp-mode-hook #'eldoc-mode)
;; (add-hook 'emacs-lisp-mode-hook
;;           (clambda ()
;;               (setq mode-name " ξ ")))
;; (add-hook 'emacs-lisp-mode-hook
;;           (lambda ()
;;             (add-to-list 'after-save-hook #'muki:elisp-reload-package)))

;; (defun-add-hook muki:elisp-pretty-symbols (emacs-lisp-mode-hook)
;;   (push '(">=" . ?≥) prettify-symbols-alist)
;;   (push '("add-hook" . ?) prettify-symbols-alist)
;;   (push '("hook" . ?) prettify-symbols-alist)
;;   (push '("mode" . ?👚) prettify-symbols-alist)
;;   (push '("defun" . ?𝆑) prettify-symbols-alist)
;;   (push '("cl-defun" . ?𝆑) prettify-symbols-alist)
;;   )

(setq lisp-indent-function #'common-lisp-indent-function)

;;;; keymap
(add-key emacs-lisp-mode-map "C-m" #'newline-and-indent)



;;; fix indentation
;; [[http://emacs.stackexchange.com/questions/10230/how-to-indent-keywords-aligned][elisp - How to indent keywords aligned? - Emacs Stack Exchange]]
;; [[https://github.com/Fuco1/.emacs.d/blob/af82072196564fa57726bdbabf97f1d35c43b7f7/site-lisp/redef.el#L20-L94][.emacs.d/redef.el at af82072196564fa57726bdbabf97f1d35c43b7f7 · Fuco1/.emacs.d · GitHub]]
;; [[https://github.com/Fuco1/.emacs.d/blob/master/site-lisp/my-redef.el][.emacs.d/my-redef.el at master · Fuco1/.emacs.d · GitHub]]
;;
;; redefines the silly indent of keyword lists
;; before
;;   (:foo bar
;;         :baz qux)
;; after
;;   (:foo bar
;;    :baz qux)
(with-eval-after-load "lisp-mode"
  (defun Fuco1/lisp-indent-function (indent-point state)
    "This function is the normal value of the variable `lisp-indent-function'.
The function `calculate-lisp-indent' calls this to determine
if the arguments of a Lisp function call should be indented specially.
INDENT-POINT is the position at which the line being indented begins.
Point is located at the point to indent under (for default indentation);
STATE is the `parse-partial-sexp' state for that position.
If the current line is in a call to a Lisp function that has a non-nil
property `lisp-indent-function' (or the deprecated `lisp-indent-hook'),
it specifies how to indent.  The property value can be:
* `defun', meaning indent `defun'-style
  \(this is also the case if there is no property and the function
  has a name that begins with \"def\", and three or more arguments);
* an integer N, meaning indent the first N arguments specially
  (like ordinary function arguments), and then indent any further
  arguments like a body;
* a function to call that returns the indentation (or nil).
  `lisp-indent-function' calls this function with the same two arguments
  that it itself received.
This function returns either the indentation to use, or nil if the
Lisp function does not specify a special indentation."
    (let ((normal-indent (current-column))
          (orig-point (point)))
      (goto-char (1+ (elt state 1)))
      (parse-partial-sexp (point) calculate-lisp-indent-last-sexp 0 t)
      (cond
       ;; car of form doesn't seem to be a symbol, or is a keyword
       ((and (elt state 2)
           (or (not (looking-at "\\sw\\|\\s_"))
              (looking-at ":")))
        (if (not (> (save-excursion (forward-line 1) (point))
                  calculate-lisp-indent-last-sexp))
            (progn (goto-char calculate-lisp-indent-last-sexp)
                   (beginning-of-line)
                   (parse-partial-sexp (point)
                                       calculate-lisp-indent-last-sexp 0 t)))
        ;; Indent under the list or under the first sexp on the same
        ;; line as calculate-lisp-indent-last-sexp.  Note that first
        ;; thing on that line has to be complete sexp since we are
        ;; inside the innermost containing sexp.
        (backward-prefix-chars)
        (current-column))
       ((and (save-excursion
             (goto-char indent-point)
             (skip-syntax-forward " ")
             (not (looking-at ":")))
           (save-excursion
             (goto-char orig-point)
             (looking-at ":")))
        (save-excursion
          (goto-char (+ 2 (elt state 1)))
          (current-column)))
       (t
        (let ((function (buffer-substring (point)
                                          (progn (forward-sexp 1) (point))))
              method)
          (setq method (or (function-get (intern-soft function)
                                        'lisp-indent-function)
                          (get (intern-soft function) 'lisp-indent-hook)))
          (cond ((or (eq method 'defun)
                    (and (null method)
                       (> (length function) 3)
                       (string-match "\\`def" function)))
                 (lisp-indent-defform state indent-point))
                ((integerp method)
                 (lisp-indent-specform method state
                                       indent-point normal-indent))
                (method
                 (funcall method indent-point state)))))))))

(add-hook 'emacs-lisp-mode-hook
          (lambda () (setq-local lisp-indent-function #'Fuco1/lisp-indent-function)))
