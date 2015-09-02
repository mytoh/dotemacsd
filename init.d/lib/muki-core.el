;;; muki-core -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(require 'cl-lib)
(require 'subr-x)
(require 'color)

(cl-defmacro muki:log (&rest messages)
  (declare (debug t))
  `(cl-locally
       (message (concat (propertize ">> " 'face 'font-lock-doc-face)
                        ,@messages) " ...")))

(cl-defun muki:user-emacs-directory (&optional path)
  (if path
      (expand-file-name path user-emacs-directory)
    user-emacs-directory))


;; http://github.com/juanjux/emacs-dotfiles
(defmacro after (feature &rest body)
  "After FEATURE is loaded, evaluate BODY."
  (declare (indent defun))
  `(with-eval-after-load ,feature ,@body))

(defun hook (hook function &optional append local)
  (add-hook hook function append local))

(cl-defmacro defun-add-hook (hookfunc hooknames &rest body)
  (declare (debug t)
           (doc-string 3)
           (indent 2))
  `(cl-locally
       (cl-defun ,hookfunc ()
         ,@body)
     ,@(seq-map
        (lambda (name)
          `(add-hook ',name (quote ,hookfunc)))
        hooknames)))

;; (lazyload (triger-function ...) "filename" &rest body)
;; http://e-arrows.sakura.ne.jp/2010/03/macros-in-emacs-el.html
;; (cl-defmacro lazyload (funcs lib)
;;   (declare (debug t))
;;   `(cl-locally
;;        ,@(seq-map (lambda (f) `(autoload ',f ,lib nil t))
;;                     funcs)))

;; (append-to-list exec-path
;;                 '("/usr/bin" "/bin"
;;                   "/usr/sbin" "/sbin"))
(cl-defmacro append-to-list (to lst)
  (declare (debug t))
  `(setq ,to (append ,to ,lst)))

(cl-defun muki:add-to-load-path (path)
  (and (file-exists-p path)
       (cl-pushnew (expand-file-name
                    (file-name-as-directory path))
                   load-path)))

(cl-defmacro muki:expand-file-names (&rest names)
  (cl-labels ((rec (l ns)
                (if (cl-endp ns)
                    l
                  (rec (list 'expand-file-name (car ns) l)  (cdr ns)))))
    (rec '() names)))

(cl-defmacro muki:set-face-colours (face fore back)
  (declare (debug t))
  `(cl-locally
       (set-face-foreground ,face ,fore)
     (set-face-background ,face ,back)))


;;http://www.reddit.com/r/emacs/comments/umb24/expandfilename_is_good_for_path_concat_too/
(cl-defun concat-path (&rest parts)
  (cl-reduce (lambda (a b) (expand-file-name b a)) parts))

(cl-defun muki:lisp-before-save-hook ()
  (save-excursion
    (goto-char (point-min))
    (muki:delete-trailing-whitespace)
    (while (re-search-forward (rx (submatch (syntax close-parenthesis))
                                  (submatch (one-or-more (in  " \t")))
                                  (submatch (syntax close-parenthesis))) nil t)
      (replace-match  "))" nil nil))
    (while (re-search-forward (rx (submatch (syntax open-parenthesis))
                                  (submatch (one-or-more (in  " \t")))
                                  (submatch (syntax open-parenthesis))) nil t)
      (replace-match  "((" nil nil))
    (indent-region (point-min) (point-max))))

(cl-defun muki:indent-buffer ()
  "milkypostman/dotemacs/defun.el"
  (interactive)
  (indent-region (point-min) (point-max)))

;; prelude/init.el
(cl-defun add-subdirs-to-load-path (parent-dir)
  "add all first level `parent-dir' subdirs to the
emacs load path"
  (seq-doseq (f (directory-files parent-dir))
    (cl-letf ((name (expand-file-name f parent-dir)))
      (and (file-directory-p name)
           (not (equal f ".."))
           (not (equal f "."))
           (cl-pushnew name load-path)))))

;; kill other buffers
(cl-defun kill-other-buffers ()
  "kill all buffers but the current on.
Don't mess with special buffers."
  (interactive)
  (seq-doseq (buffer (buffer-list))
    (unless (or (eql buffer (current-buffer))
                (not (buffer-file-name buffer)))
      (kill-buffer buffer))))


;; edit file as root
(cl-defun sudo-edit (&optional arg)
  "Edit currently visited file as root.

With a prefix ARG prompt for a file to visit.
Will also prompt for a file to visit if current
buffer is not visiting a file."
  (interactive "P")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:"
                         (ido-read-file-name "Find file(as root): ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

;;; colour util
(cl-defun muki:colour-hsl-to-hex (h s l)
  (cl-destructuring-bind (r g b)
      (color-hsl-to-rgb (/ h 360.0) (/ s 100.0) (/ l 100.0))
    (color-rgb-to-hex r g b)))

;; smart kill word
;; http://d.hatena.ne.jp/kiwanami/20091222/1261504543
(cl-defun kill-region-or-backward-kill-word ()
  (interactive)
  (if (region-active-p)
      (kill-region (point) (mark))
    (backward-kill-word 1)))

;; kill whole line
(cl-defun smart-kill-whole-line (&optional arg)
  "A simple wrapper around `kill-whole-line' that respects indentation"
  (interactive "P")
  (kill-whole-line arg)
  (back-to-indentation))

(cl-defun muki:org-make-src ()
  (interactive)
  (save-excursion
    (goto-char (region-beginning))
    (insert "#+begin_src \n")
    (goto-char (region-end))
    (insert "\n#+end_src\n")))

(cl-defun muki:load (file)
  (if (file-exists-p file)
      (progn
        (muki:log "loading file " file)
        (load file))
    (muki:log "can't find file " file)))

(cl-defmacro muki:comment (&rest body)
  t)

;; close other buffers
;; [[http://kotatu.org/blog/2014/02/02/emacs-kill-other-buffers/]]
(defun muki:kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (let* ((no-kill-buffer-names
          ;; 消さないバッファ名を指定
          (list (buffer-name (current-buffer))
                "*Messages*" "*Compile-Log*" "*Help*"
                "*init log*" "*Ibuffer*" "*scratch*"
                "*MULTI-TERM-DEDICATED*"))
         (interested-buffers
          (seq-filter
           (lambda (buffer)
             (and
              ;; donk kill buffers who has the windows displayed in
              (not (get-buffer-window (buffer-name buffer)))
              ;; dont kill hidden buffers (hidden buffers' name starts with SPACE)
              (not (save-match-data (string-match "^ " (buffer-name buffer))))
              ;; dont kill special buffersa with stars
              (not (save-match-data (string-match "^\\*.+\\*\\'" (buffer-name buffer))))
              ;; dont kill buffers who have running processes
              (let ((proc (get-buffer-process buffer)))
                (if proc
                    (eq 'exit
                        (process-status
                         (get-buffer-process buffer)))
                  t))))
           (buffer-list)))
         (buffers-to-kill
          (set-difference interested-buffers
                          (seq-map (lambda (buffer-name)
                                     (get-buffer buffer-name))
                                   no-kill-buffer-names))))
    (seq-each #'kill-buffer buffers-to-kill)))


;; github.com/gabriel-laddel/masamune-os
(cl-defmacro clambda (&rest body)
  (declare (doc-string 2) (indent defun)
           (debug (&define lambda-list
                           [&optional stringp]
                           [&optional ("interactive" interactive)]
                           def-body)))
  `(cl-function (lambda ,@body)))

;; [[http://www.emacswiki.org/emacs/TransparentEmacs]]
(cl-defun toggle-transparency ()
  (interactive)
  (cl-letf ((orig-alpha (frame-parameter nil 'alpha)))
    (if (and orig-alpha
             (/= (cadr orig-alpha) 100))
        (set-frame-parameter nil 'alpha '(100 100))
      (set-frame-parameter nil 'alpha '(85 50)))))

(cl-defun muki:delete-trailing-whitespace (&optional start end)
  "Delete trailing whitespace between START and END.
If called interactively, START and END are the start/end of the
region if the mark is active, or of the buffer's accessible
portion if the mark is inactive.

This command deletes whitespace characters after the last
non-whitespace character in each line between START and END.  It
does not consider formfeed characters to be whitespace.

If this command acts on the entire buffer (i.e. if called
interactively with the mark inactive, or called from Lisp with
END nil), it also deletes all trailing lines at the end of the
buffer if the variable `delete-trailing-lines' is non-nil."
  (interactive (progn
                 (barf-if-buffer-read-only)
                 (if (use-region-p)
                     (list (region-beginning) (region-end))
                   (list nil nil))))
  (save-match-data
    (save-excursion
      (let ((end-marker (copy-marker (or end (point-max))))
            (start (or start (point-min))))
        (goto-char start)
        (while (ignore-errors (re-search-forward "\\s-$" end-marker t))
          (skip-syntax-backward "-" (line-beginning-position))
          ;; Don't delete formfeeds, even if they are considered whitespace.
          (if (looking-at-p ".*\f")
              (goto-char (match-end 0)))
          (delete-region (point) (match-end 0)))
        ;; Delete trailing empty lines.
        (goto-char end-marker)
        (when (and (not end)
                   delete-trailing-lines
                   ;; Really the end of buffer.
                   (= (point-max) (1+ (buffer-size)))
                   (<= (skip-chars-backward "\n") -2))
          (delete-region (1+ (point)) end-marker))
        (set-marker end-marker nil))))
  ;; Return nil for the benefit of `write-file-functions'.
  nil)

(cl-defun muki:clean-lines (beg end)
  (interactive "r")
  (sort-lines nil beg end)
  (delete-duplicate-lines beg end))

(cl-defun muki:quote-all-lines (beg end)
  (interactive "r")
  (cl-letf ((marker (make-marker)))
    (set-marker marker (region-end))
    (goto-char (region-beginning))
    (while (< (point) marker)
      (beginning-of-line)
      (insert ?\")
      (end-of-line)
      (insert ?\")
      (forward-line 1))))

(provide 'muki-core)

;;; muki-core.el ends here
