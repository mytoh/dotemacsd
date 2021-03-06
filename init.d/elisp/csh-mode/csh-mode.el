;; csh-mode.el --- csh (and tcsh) script editing mode for Emacs.
;;
;; Version:    1.2
;; Date:       April 2, 1999
;; Maintainer: Dan Harkless <software@harkless.org>
;;
;; Description:
;;   csh and tcsh script editing mode for Emacs.
;;
;; Installation:
;;   Put csh-mode.el in some directory in your load-path and load it.
;;
;; Usage:
;;   This major mode assists shell script writers with indentation
;;   control and control structure construct matching in much the same
;;   fashion as other programming language modes. Invoke describe-mode
;;   for more information.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Author key:
;;   DH - Dan Harkless     <software@harkless.org>
;;   CM - Carlo Migliorini <migliorini@sodalia.it>
;;   JR - Jack Repenning   <jackr@sgi.com>
;;   GE - Gary Ellison     <Gary.F.Ellison@att.com>
;;
;; *** REVISION HISTORY ***
;;
;; DATE MOD.  BY  REASON FOR MODIFICATION
;; ---------  --  --------------------------------------------------------------
;;  2 Apr 99  DH  1.2: Noticed an out-of-date comment referencing .bashrc etc.
;; 11 Dec 96  DH  1.1: ksh-mode just indented continuation lines by 1 space.
;;                csh-mode looks at the first line and indents properly to line
;;                up under the open-paren, quote, or command.
;; 11 Dec 96  DH  Added fontification for history substitutions.
;; 10 Dec 96  DH  Added indentation and fontification for labels.  Added
;;                fontification for variables and backquoted strings.
;;  9 Dec 96  DH  1.0: Brought csh-mode up to the level of functionality of
;;                the original ksh-mode.
;;  7 Oct 96  CM  0.1: Hacked ksh-mode.el into minimally functional csh-mode.el
;;                by doing search-and-replace and some keyword changes.
;;  8 Aug 96  JR (Last modification to ksh-mode 2.6.)
;;                [...]
;; 19 Jun 92  GE (Conception of ksh-mode.)
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'cl-lib)


(defconst csh-mode-version "1.2"
  "*Version number of this version of csh-mode")

(defvar csh-mode-hook
  (lambda ()
    (auto-fill-mode 1))
  "Hook to run each time csh-mode is entered.")


;;
;; -------------------------------------------> Variables controlling completion
;;
(defvar csh-completion-list '())
(make-variable-buffer-local 'csh-completion-list)
(set-default 'csh-completion-list  '())
;;
;; -type-  : type number, 0:misc, 1:variable, 2:function
;; -regexp-: regexp used to parse the script
;; -match- : used by match-beginning/end to pickup target
;;
(defvar csh-completion-type-misc 0)
(defvar csh-completion-regexp-var "\\([A-Za-z_0-9]+\\)=")
(defvar csh-completion-type-var 1)
(defvar csh-completion-match-var 1)
(defvar csh-completion-regexp-var2 "\\$\\({\\|{#\\)?\\([A-Za-z_0-9]+\\)[#%:}]?")
(defvar csh-completion-match-var2 2)
(defvar csh-completion-regexp-function
  "\\(function\\)?[ \t]*\\([A-Za-z_0-9]+\\)[ \t]*([ \t]*)")
(defvar csh-completion-type-function 2)
(defvar csh-completion-match-function 2)


;;
;; ------------------------------------> Variables controlling indentation style
;;
(defvar csh-indent 4
  "*Indentation of csh statements with respect to containing block. A value
of nil indicates compound list keyword \(\"do\" and \"then\"\) alignment.")

(defvar csh-case-item-offset csh-indent
  "*Additional indentation for case items within a case statement.")
(defvar csh-case-indent nil
  "*Additional indentation for statements under case items.")
(defvar csh-comment-regexp "^\\s *#"
  "*Regular expression used to recognize comments. Customize to support
csh-like languages.")
(defvar csh-match-and-tell t
  "*If non-nil echo in the minibuffer the matching compound command
for the \"breaksw\", \"end\", or \"endif\".")
(defvar csh-tab-always-indent t
  "*Controls the operation of the TAB key. If t (the default), always
reindent the current line.  If nil, indent the current line only if
point is at the left margin or in the line's indentation; otherwise
insert a tab.")


;;
;; ----------------------------------------> Constants containing syntax regexps
;;
(defconst csh-case-default-re
  "^\\s *\\(case\\|default\\)\\b"
  "Regexp used to locate grouping keywords case and default" )

(defconst csh-case-item-re "^\\s *\\(case .*\\|default\\):"
  "Regexp used to match case-items")

(defconst csh-end-re "^\\s *end\\b"
  "Regexp used to match keyword: end")

(defconst csh-endif-re "^\\s *endif\\b"
  "Regexp used to match keyword: endif")

(defconst csh-endsw-re "^\\s *endsw\\b"
  "Regexp used to match keyword: endsw")

(defconst csh-else-re "^\\s *\\belse\\(\\b\\|$\\)"
  "Regexp used to match keyword: else")

(defconst csh-else-if-re "^\\s *\\belse if\\(\\b\\|$\\)"
  "Regexp used to match keyword pair: else if")

(defconst csh-if-re "^\\s *if\\b.+\\(\\\\\\|\\bthen\\b\\)"
  "Regexp used to match non-one-line if statements")

(defconst csh-iteration-keywords-re "^[^#\n]*\\s\"*\\b\\(while\\|foreach\\)\\b"
  "Match one of the keywords: while, foreach")

(defconst csh-keywords-re
  "^\\s *\\(else\\b\\|foreach\\b\\|if\\b.+\\(\\\\\\|\\bthen\\b\\)\\|switch\\b\\|while\\b\\)"
  "Regexp used to detect compound command keywords: else, if, foreach, while")

(defconst csh-label-re "^\\s *[^!#$\n ]+:"
  "Regexp used to match flow-control labels")

(defconst csh-multiline-re "^.*\\\\$"
  "Regexp used to match a line with a statement using more lines.")

(defconst csh-switch-re "^\\s *switch\\b"
  "Regexp used to match keyword: switch")


;;
;; ----------------------------------------> Variables controlling fontification
;;
(defvar csh-keywords '("@" "alias" "bg" "break" "breaksw" "cd" "chdir"
                       "continue" "default" "dirs" "echo"
                       "eval" "exec" "exit" "fg"  "glob" "goto"
                       "hashstat" "history" "jobs" "kill" "limit" "login"
                       "logout" "limit" "notify" "onintr" "popd" "printenv"
                       "pushd" "rehash" "repeat" "set" "setenv" "shift" "source"
                       "stop" "suspend"  "time" "umask" "unalias"
                       "unhash" "unlimit" "unset" "unsetenv" "wait"
                       ;; tcsh-keywords
                       "alloc" "bindkey" "builtins" "complete" "echotc"
                       "filetest" "hup" "log" "ls-F" "nice" "nohup" "sched"
                       "settc" "setty" "telltc" "uncomplete" "where" "which"))

(defvar csh-expression-keywords
  '("if" "else" "then" "endif" "case" "endsw"  "while"
    "foreach" "end" "switch"))

(defconst csh-font-lock-keywords
  ;; NOTE:  The order of some of the items in this list is significant.  Do not
  ;;        alphabetize or otherwise blindly rearrange.
  (list
   ;; Comments on line 1, which are missed by syntactic fontification.
   '("^\\([ \t]*\\)#.*$" 0 font-lock-comment-face)

   ;; Label definitions (1 means first parenthesized exp in regexp).
   '("^\\s *\\([^!#$\n ]+\\):" 1 font-lock-function-name-face)

   ;; Label references.
   '("\\b\\(goto\\|onintr\\)\\b\\s +\\([^!#$ \n\t]+\\)"
     2 font-lock-function-name-face)

   ;; Variable settings.
   '("\\(@\\|set\\|setenv\\)\\s +\\([0-9A-Za-z_]+\\b\\)"
     2 font-lock-variable-name-face)

   ;; foreach variable
   '("\\(foreach\\)\\s +\\([0-9A-Za-z_]+\\b\\)"
     2 font-lock-keyword-face)


   ;; Variable references not inside of strings.
   '("\\$[][0-9A-Za-z_#:?]+" 0 font-lock-variable-name-face)
   '("\\${\\([0-9A-Za-z_#:?]+\\)}" 1 font-lock-variable-name-face)

   ;; Backquoted strings.  'keep' means to just fontify non-fontified text.
   '("`\\(.*\\)`" 1 font-lock-reference-face keep)

   ;; NOTE:  The following variables need to be anchored to the beginning of
   ;;        line to prevent re-fontifying text in comments.  Due to this, we
   ;;        can only catch a finite number of occurrences.  More can be added.
   ;;        The 't' means to override previous fontification.
   ;;
   ;;        Variable references inside of " strings.
   '("^[^#\n]*\".*\\(\\$[][0-9A-Za-z_#:?]+\\).*\""
     1 font-lock-variable-name-face t)                                    ; 1
   '("^[^#\n]*\".*\\(\\$[][0-9A-Za-z_#:?]+\\).*\\$[][0-9A-Za-z_#:?]+.*\""
     1 font-lock-variable-name-face t)                                    ; 2
   (cons (concat "^[^#\n]*\".*\\(\\$[][0-9A-Za-z_#:?]+\\).*"
                 "\\$[][0-9A-Za-z_#:?]+.*\\$[][0-9A-Za-z_#:?]+.*\"")
         (list 1 font-lock-variable-name-face t))                         ; 3
   ;;
   ;;        History substitutions.
   '("^![^~= \n\t]+" 0 font-lock-reference-face t)                      ; BOL
   '("^[^#\n]*[^#\\\n]\\(![^~= \n\t]+\\)" 1 font-lock-reference-face t) ; 1
   '("^[^#\n]*[^#\\\n]\\(![^~= \n\t]+\\).*![^~= \n\t]+"
     1 font-lock-reference-face t)                                      ; 2

   ;; Keywords.
   (cons (concat
          "\\(\\<"
          (mapconcat #'identity csh-keywords "\\>\\|\\<")
          "\\>\\)")
         1)

   ;; expression keywords
   (cons (concat
          "\\(\\<"
          (mapconcat #'identity csh-expression-keywords "\\>\\|\\<")
          "\\>\\)")
         (list 1 font-lock-builtin-face))
   ))

;;
;; -------------------------------------------------------> Mode-specific tables
;;
(defvar csh-mode-abbrev-table nil
  "Abbrev table used while in csh mode.")
(define-abbrev-table 'csh-mode-abbrev-table ())

(defvar csh-mode-map nil
  "Keymap used in csh mode")
(if csh-mode-map
    ()
  (setq csh-mode-map (make-sparse-keymap))
  ;;(define-key csh-mode-map "\177"    'backward-delete-char-untabify)
  (define-key csh-mode-map "\C-c\t"  'csh-completion-init-and-pickup)
  (define-key csh-mode-map (kbd "C-j")    'reindent-then-newline-and-indent)
  (define-key csh-mode-map "\e\t"    'csh-complete-symbol)
  (define-key csh-mode-map "\n"      'reindent-then-newline-and-indent)
  (define-key csh-mode-map '[return] 'reindent-then-newline-and-indent)
  (define-key csh-mode-map "\t"      'csh-indent-command)
  ;;(define-key csh-mode-map "\t"      'csh-indent-line)
  )

(defvar csh-mode-syntax-table nil
  "Syntax table used while in csh mode.")
(if csh-mode-syntax-table
    ;; If it's already set up, don't change it.
    ()
  ;; Else, create it from the standard table and modify entries that need to be.
  (setq csh-mode-syntax-table (make-syntax-table))
  (modify-syntax-entry ?&  "."  csh-mode-syntax-table) ; & -punctuation
  (modify-syntax-entry ?*  "."  csh-mode-syntax-table) ; * -punctuation
  (modify-syntax-entry ?-  "."  csh-mode-syntax-table) ; - -punctuation
  (modify-syntax-entry ?=  "."  csh-mode-syntax-table) ; = -punctuation
  (modify-syntax-entry ?+  "."  csh-mode-syntax-table) ; + -punctuation
  (modify-syntax-entry ?|  "."  csh-mode-syntax-table) ; | -punctuation
  (modify-syntax-entry ?<  "."  csh-mode-syntax-table) ; < -punctuation
  (modify-syntax-entry ?>  "."  csh-mode-syntax-table) ; > -punctuation
  (modify-syntax-entry ?/  "."  csh-mode-syntax-table) ; / -punctuation
  (modify-syntax-entry ?\' "\"" csh-mode-syntax-table) ; ' -string quote
  (modify-syntax-entry ?.  "w"  csh-mode-syntax-table) ; . -word constituent
  (modify-syntax-entry ??  "w"  csh-mode-syntax-table) ; ? -word constituent

  ;; \n - comment ender, first character of 2-char comment sequence
  (modify-syntax-entry ?\n "> 1" csh-mode-syntax-table) ; # -word constituent

  ;;   - whitespace, first character of 2-char comment sequence
  (modify-syntax-entry ?   "  1" csh-mode-syntax-table) ;

  ;; \t - whitespace, first character of 2-char comment sequence
  (modify-syntax-entry ?\t "  1" csh-mode-syntax-table) ; # -word constituent

  ;; # - word constituent, second character of 2-char comment sequence
  (modify-syntax-entry ?#  "w 2" csh-mode-syntax-table) ; # -word constituent
  )


;;
;; ------------------------------------------------------------------> Functions
;;
(cl-defun csh-current-line ()              ;
  "Return the vertical position of point in the buffer.
Top line is 1."
  (+ (count-lines (point-min) (point))
     (if (= (current-column) 0) 1 0)))

(cl-defun csh-get-compound-level
    (begin-re end-re anchor-point &optional balance-list)
  "Determine how much to indent this structure. Return a list (level line)
of the matching compound command or nil if no match found."
  (cl-letf*
      ;; Locate the next compound begin keyword bounded by point-min
      ((match-point (if (re-search-backward begin-re (point-min) t)
                        (match-beginning 0) 0))
       (nest-column (if (zerop match-point)
                        1
                      (progn
                        (goto-char match-point)
                        (current-indentation))))
       (nest-list (cons 0 0)))   ;; sentinel cons since cdr is >= 1
    (if (zerop match-point)
        nil ;; graceful exit from recursion
      (progn
        (if (nlistp balance-list)
            (setq balance-list (list)))
        ;; Now search forward from matching start keyword for end keyword
        (while (and (consp nest-list) (zerop (cdr nest-list))
                  (re-search-forward end-re anchor-point t))
          (if (not (memq (point) balance-list))
              (progn
                (setq balance-list (cons (point) balance-list))
                (goto-char match-point)  ;; beginning of compound cmd
                (setq nest-list
                      (csh-get-compound-level begin-re end-re
                                              anchor-point balance-list)))))

        (cond ((consp nest-list)
               (if (zerop (cdr nest-list))
                   (progn
                     (goto-char match-point)
                     (cons nest-column (csh-current-line)))
                 nest-list))
              (t nil))))))

(cl-defun csh-get-nest-level ()
  "Return a 2 element list (nest-level nest-line) describing where the
current line should nest."
  (cl-letf ((case-fold-search)
            (level))
    (save-mark-and-excursion
      (forward-line -1)
      (while (and (not (bobp))
                (null level))
        (if (and (not (looking-at "^\\s *$"))
               (not (save-mark-and-excursion
                    (forward-line -1)
                    (beginning-of-line)
                    (looking-at csh-multiline-re)))
               (not (looking-at csh-comment-regexp)))
            (setq level (cons (current-indentation)
                              (csh-current-line)))
          (forward-line -1)))
      (if (null level)
          (cons (current-indentation) (csh-current-line))
        level))))

(cl-defun csh-get-nester-column (nest-line)
  "Return the column to indent to with respect to nest-line taking
into consideration keywords and other nesting constructs."
  (save-mark-and-excursion
    (cl-letf ((fence-post)
              (case-fold-search)
              (start-line (csh-current-line)))
      ;;
      ;; Handle case item indentation constructs for this line
      (cond ((looking-at csh-case-item-re)
             ;; This line is a case item...
             (save-mark-and-excursion
               (goto-line nest-line)
               (cl-letf ((fence-post (save-mark-and-excursion (end-of-line) (point))))
                 (cond ((re-search-forward csh-switch-re fence-post t)
                        ;; If this is the first case under the switch, indent.
                        (goto-char (match-beginning 0))
                        (+ (current-indentation) csh-case-item-offset))
                       ((re-search-forward csh-case-item-re fence-post t)
                        ;; If this is another case right under a previous case
                        ;; without intervening code, stay at the same
                        ;; indentation.
                        (goto-char (match-beginning 0))
                        (current-indentation))
                       (t
                        ;; Else, this is a new case.  Outdent.
                        (- (current-indentation) csh-case-item-offset))))))
            (t;; Not a case-item.  What to do relative to the nest-line?
             (save-mark-and-excursion
               (goto-line nest-line)
               (setq fence-post (save-mark-and-excursion (end-of-line) (point)))
               (save-mark-and-excursion
                 (cond
                   ;;
                   ;; Check if we are in a continued statement
                   ((and (looking-at csh-multiline-re)
                       (save-mark-and-excursion
                         (goto-line (1- start-line))
                         (looking-at csh-multiline-re)))
                    (if (looking-at ".*[\'\"]\\\\")
                        ;; If this is a continued string, indent under
                        ;; opening quote.
                        (progn
                          (re-search-forward "[\'\"]")
                          (forward-char -1))
                      (if (looking-at ".*([^\)\n]*\\\\")
                          ;; Else if this is a continued parenthesized
                          ;; list, indent after paren.
                          (re-search-forward "(" fence-post t)
                        ;; Else, indent after whitespace after first word.
                        (re-search-forward "[^ \t]+[ \t]+" fence-post t)))
                    (current-column))

                   ;; In order to locate the column of the keyword,
                   ;; which might be embedded within a case-item,
                   ;; it is necessary to use re-search-forward.
                   ;; Search by literal case, since shell is
                   ;; case-sensitive.
                   ((re-search-forward csh-keywords-re fence-post t)
                    (goto-char (match-beginning 1))
                    (if (looking-at csh-switch-re)
                        (+ (current-indentation) csh-case-item-offset)
                      (+ (current-indentation)
                         (if (null csh-indent)
                             2 csh-indent))))
                   ((re-search-forward csh-case-default-re fence-post t)
                    (if (null csh-indent)
                        (progn
                          (goto-char (match-end 1))
                          (+ (current-indentation) 1))
                      (progn
                        (goto-char (match-beginning 1))
                        (+ (current-indentation) csh-indent))))
                   ;;
                   ;; Now detect first statement under a case item
                   ((looking-at csh-case-item-re)
                    (if (null csh-case-indent)
                        (progn
                          (re-search-forward csh-case-item-re fence-post t)
                          (goto-char (match-end 1))
                          (+ (current-column) 1))
                      (+ (current-indentation) csh-case-indent)))

                   ;;
                   ;; If this is the first statement under a control-flow
                   ;; label, indent one level.
                   ((csh-looking-at-label)
                    (+ (current-indentation) csh-indent))

                   ;; This is hosed when using current-column
                   ;; and there is a multi-command expression as the
                   ;; nester.
                   (t (current-indentation))))))))))

(cl-defun csh-indent-command ()
  "Indent current line relative to containing block and allow for
csh-tab-always-indent customization"
  (interactive)
  (cl-letf ((case-fold-search))
    (cond ((save-mark-and-excursion
             (skip-chars-backward " \t")
             (bolp))
           (csh-indent-line))
          (csh-tab-always-indent
           (save-mark-and-excursion
             (csh-indent-line)))
          (t (insert-tab)))))

(cl-defun csh-indent-line ()
  "Indent current line as far as it should go according
to the syntax/context"
  (interactive)
  (cl-letf ((case-fold-search))
    (save-mark-and-excursion
      (beginning-of-line)
      (if (bobp)
          nil
        ;;
        ;; Align this line to current nesting level
        (cl-letf*
            ((level-list (csh-get-nest-level)) ; Where to nest against
             ;;           (last-line-level (car level-list))
             (this-line-level (current-indentation))
             (nester-column (csh-get-nester-column (cdr level-list)))
             (struct-match (csh-match-structure-and-reindent)))
          (if struct-match
              (setq nester-column struct-match))
          (if (eq nester-column this-line-level)
              nil
            (beginning-of-line)
            (cl-letf ((beg (point)))
              (back-to-indentation)
              (delete-region beg (point)))
            (indent-to nester-column)))))
    ;; Position point on this line
    (cl-letf* ((this-line-level (current-indentation))
               (this-bol (save-mark-and-excursion
                           (beginning-of-line)
                           (point)))
               (this-point (- (point) this-bol)))
      (cond ((> this-line-level this-point);; point in initial white space
             (back-to-indentation))
            (t nil)))))

(cl-defun csh-indent-region (start end)
  "From start to end, indent each line."
  ;; The algorithm is just moving through the region line by line with
  ;; the match noise turned off.  Only modifies nonempty lines.
  (save-mark-and-excursion
    (cl-letf (csh-match-and-tell
              (endmark (copy-marker end)))

      (goto-char start)
      (beginning-of-line)
      (setq start (point))
      (while (> (marker-position endmark) start)
        (if (not (and (bolp) (eolp)))
            (csh-indent-line))
        (forward-line 1)
        (setq start (point)))
      (set-marker endmark nil))))

(cl-defun csh-line-to-string ()
  "From point, construct a string from all characters on
current line"
  (skip-chars-forward " \t") ;; skip tabs as well as spaces
  (buffer-substring (point)
                    (progn
                      (end-of-line 1)
                      (point))))

(cl-defun csh-looking-at-label ()
  "Return true if current line is a label (not the default: case label)."
  (and
   (looking-at csh-label-re)
   (not (looking-at "^\\s *default:"))))

(cl-defun csh-match-indent-level (begin-re end-re)
  "Match the compound command and indent. Return nil on no match,
indentation to use for this line otherwise."
  (interactive)
  (cl-letf* ((case-fold-search)
             (nest-list
              (save-mark-and-excursion
                (csh-get-compound-level begin-re end-re (point)))))
    (if (null nest-list)
        (progn
          (if csh-match-and-tell
              (message "No matching compound command"))
          nil
          (cl-letf* ((nest-level (car nest-list))
                     (match-line (cdr nest-list)))
            (if csh-match-and-tell
                (save-mark-and-excursion
                  (goto-line match-line)
                  (message "Matched ... %s" (csh-line-to-string))))
            nest-level ;;Propagate a hit.
            )))))

(cl-defun csh-match-structure-and-reindent ()
  "If the current line matches one of the indenting keywords
or one of the control structure ending keywords then reindent. Also
if csh-match-and-tell is non-nil the matching structure will echo in
the minibuffer"
  (interactive)
  (cl-letf ((case-fold-search))
    (save-mark-and-excursion
      (beginning-of-line)
      (cond ((looking-at csh-else-re)
             (csh-match-indent-level csh-if-re csh-endif-re))
            ((looking-at csh-else-if-re)
             (csh-match-indent-level csh-if-re csh-endif-re))
            ((looking-at csh-endif-re)
             (csh-match-indent-level csh-if-re csh-endif-re))
            ((looking-at csh-end-re)
             (csh-match-indent-level csh-iteration-keywords-re csh-end-re))
            ((looking-at csh-endsw-re)
             (csh-match-indent-level csh-switch-re csh-endsw-re))
            ((csh-looking-at-label)
             ;; Flush control-flow labels left since they don't nest.
             0)
            (t nil)))))

;;;###autoload
(define-derived-mode csh-mode  prog-mode "Csh"
                     "csh-mode 2.0 - Major mode for editing csh and tcsh scripts.
Special key bindings and commands:
\\{csh-mode-map}
Variables controlling indentation style:
csh-indent
    Indentation of csh statements with respect to containing block.
    Default value is 4.
csh-case-indent
    Additional indentation for statements under case items.
    Default value is nil which will align the statements one position
    past the \")\" of the pattern.
csh-case-item-offset
    Additional indentation for case items within a case statement.
    Default value is 2.
csh-tab-always-indent
    Controls the operation of the TAB key. If t (the default), always
    reindent the current line.  If nil, indent the current line only if
    point is at the left margin or in the line's indentation; otherwise
    insert a tab.
csh-match-and-tell
    If non-nil echo in the minibuffer the matching compound command
    for the \"done\", \"}\", \"fi\", or \"endsw\". Default value is t.

csh-comment-regexp
  Regular expression used to recognize comments. Customize to support
  csh-like languages. Default value is \"\^\\\\s *#\".

Style Guide.
 By setting
    (setq csh-indent default-tab-width)

    The following style is obtained:

    if [ -z $foo ]
        then
            bar    # <-- csh-group-offset is additive to csh-indent
            foo
    fi

 By setting
    (setq csh-indent default-tab-width)
    (setq csh-group-offset (- 0 csh-indent))

    The following style is obtained:

    if [ -z $foo ]
    then
        bar
        foo
    fi

 By setting
    (setq csh-case-item-offset 1)
    (setq csh-case-indent nil)

    The following style is obtained:

    case x in *
     foo) bar           # <-- csh-case-item-offset
          baz;;         # <-- csh-case-indent aligns with \")\"
     foobar) foo
             bar;;
    endsw

 By setting
    (setq csh-case-item-offset 1)
    (setq csh-case-indent 6)

    The following style is obtained:

    case x in *
     foo) bar           # <-- csh-case-item-offset
           baz;;        # <-- csh-case-indent
     foobar) foo
           bar;;
    endsw


Installation:
  Put csh-mode.el in some directory in your load-path.
  Put the following forms in your .emacs file.

 (setq auto-mode-alist
      (append auto-mode-alist
              (list
               '(\"\\\\.csh$\" . csh-mode)
               '(\"\\\\.login\" . csh-mode))))

 (setq csh-mode-hook
      (function (lambda ()
         (font-lock-mode 1)             ;; font-lock the buffer
         (setq csh-indent 8)
         (setq csh-tab-always-indent t)
         (setq csh-match-and-tell t)
         (setq csh-align-to-keyword t)  ;; Turn on keyword alignment
     )))"
                     :syntax-table csh-mode-syntax-table
                     :abbrev-table csh-mode-abbrev-table
                     (use-local-map csh-mode-map)
                     (make-local-variable 'indent-line-function)
                     (setq indent-line-function 'csh-indent-line)
                     (make-local-variable 'indent-region-function)
                     (setq indent-region-function 'csh-indent-region)
                     (make-local-variable 'comment-start)
                     (setq comment-start "# ")
                     (make-local-variable 'comment-end)
                     (setq comment-end "")
                     (make-local-variable 'comment-column)
                     (setq comment-column 32)
                     (make-local-variable 'comment-start-skip)
                     (setq comment-start-skip "#+ *")
                     ;;
                     ;; config font-lock mode
                     (make-local-variable 'font-lock-defaults)
                     (setq font-lock-defaults
                           (list
                            csh-font-lock-keywords
                            t t nil nil))
                     )

;; Completion code supplied by Haavard Rue <hrue@imf.unit.no>.
;;
;;
;; add a completion with a given type to the list
;;
(cl-defun csh-addto-alist (completion type)
  (setq csh-completion-list
        (append csh-completion-list
                (list (cons completion type)))))

(cl-defun csh-bol-point ()
  (save-mark-and-excursion
    (beginning-of-line)
    (point)))

(cl-defun csh-complete-symbol ()
  "Perform completion."
  (interactive)
  (cl-letf* ((case-fold-search)
             (end (point))
             (beg (unwind-protect
                       (save-mark-and-excursion
                         (backward-sexp 1)
                         (while (= (char-syntax (following-char)) ?\')
                           (forward-char 1))
                         (point))))
             (pattern (buffer-substring beg end))
             (predicate
              ;;
              ;; ` or $(mark a function
              ;;
              (save-mark-and-excursion
                (goto-char beg)
                (if (or
                     (save-mark-and-excursion
                       (backward-char 1)
                       (looking-at "`"))
                     (save-mark-and-excursion
                       (backward-char 2)
                       (looking-at "\\$(")))
                    (function (lambda (sym)
                      (equal (cdr sym) csh-completion-type-function)))
                  ;;
                  ;; a $, ${ or ${# mark a variable
                  ;;
                  (if (or
                       (save-mark-and-excursion
                         (backward-char 1)
                         (looking-at "\\$"))
                       (save-mark-and-excursion
                         (backward-char 2)
                         (looking-at "\\${"))
                       (save-mark-and-excursion
                         (backward-char 3)
                         (looking-at "\\${#")))
                      (function (lambda (sym)
                        (equal (cdr sym)
                               csh-completion-type-var)))
                    ;;
                    ;; don't know. use 'em all
                    ;;
                    (function (lambda (sym) t))))))
             (completion (try-completion pattern csh-completion-list predicate)))
    (cond ((eq completion t))
          ;;
          ;; oops, what is this ?
          ;;
          ((null completion)
           (message "Can't find completion for \"%s\"" pattern))
          ;;
          ;; insert
          ;;
          ((not (string= pattern completion))
           (delete-region beg end)
           (insert completion))
          ;;
          ;; write possible completion in the minibuffer,
          ;; use this instead of a seperate buffer (usual)
          ;;
          (t
           (cl-letf ((list (all-completions pattern csh-completion-list predicate))
                     (string ""))
             (while list
               (progn
                 (setq string (concat string (format "%s " (car list))))
                 (setq list (cdr list))))
             (message string))))))

;;
;; init the list and pickup all
;;
(cl-defun csh-completion-init-and-pickup ()
  (interactive)
  (cl-letf ((case-fold-search))
    (csh-completion-list-init)
    (csh-pickup-all)))

;;
;; init the list
;;
(cl-defun csh-completion-list-init ()
  (interactive)
  (setq csh-completion-list
        (list
         (cons "break"  csh-completion-type-misc)
         (cons "breaksw"  csh-completion-type-misc)
         (cons "case"  csh-completion-type-misc)
         (cons "continue"  csh-completion-type-misc)
         (cons "endif"  csh-completion-type-misc)
         (cons "exit"  csh-completion-type-misc)
         (cons "foreach"  csh-completion-type-misc)
         (cons "if"  csh-completion-type-misc)
         (cons "while"  csh-completion-type-misc))))

(cl-defun csh-eol-point ()
  (save-mark-and-excursion
    (end-of-line)
    (point)))

(cl-defun csh-pickup-all ()
  "Pickup all completions in buffer."
  (interactive)
  (csh-pickup-completion-driver (point-min) (point-max) t))

(cl-defun csh-pickup-completion (regexp type match pmin pmax)
  "Pickup completion in region and addit to the list, if not already
there."
  (cl-letf ((i 0) kw obj)
    (save-mark-and-excursion
      (goto-char pmin)
      (while (and
              (re-search-forward regexp pmax t)
              (match-beginning match)
              (setq kw (buffer-substring
                        (match-beginning match)
                        (match-end match))))
        (progn
          (setq obj (assoc kw csh-completion-list))
          (if (or (equal nil obj)
                 (and (not (equal nil obj))
                    (not (= type (cdr obj)))))
              (progn
                (setq i (1+ i))
                (csh-addto-alist kw type))))))
    i))

(cl-defun csh-pickup-completion-driver (pmin pmax message)
  "Driver routine for csh-pickup-completion."
  (if message
      (message "pickup completion..."))
  (cl-letf* ((i1 (csh-pickup-completion  csh-completion-regexp-var
                                         csh-completion-type-var
                                         csh-completion-match-var
                                         pmin pmax))
             (i2 (csh-pickup-completion  csh-completion-regexp-var2
                                         csh-completion-type-var
                                         csh-completion-match-var2
                                         pmin pmax))
             (i3 (csh-pickup-completion  csh-completion-regexp-function
                                         csh-completion-type-function
                                         csh-completion-match-function
                                         pmin pmax)))
    (if message
        (message "pickup %d variables and %d functions." (+ i1 i2) i3))))

(cl-defun csh-pickup-this-line ()
  "Pickup all completions in current line."
  (interactive)
  (csh-pickup-completion-driver (csh-bol-point) (csh-eol-point) nil))


(provide 'csh-mode)
;;; csh-mode.el ends here
