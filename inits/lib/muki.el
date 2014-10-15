;;; lib-util.el  -*- lexical-binding: t -*-

(eval-when-compile
  (require 'cl-lib)
  (require 'subr-x)
  (require 'color))

(cl-defmacro muki:log (&rest messages)
  (declare (debug t))
  `(cl-locally
       (message (concat (propertize ">> " 'face 'font-lock-doc-face)
                        ,@messages) " ...")))

(cl-defun muki:user-emacs-directory (&optional path)
  (if path
      (expand-file-name path user-emacs-directory)
    user-emacs-directory))

;; http://e-arrows.sakura.ne.jp/2010/03/macros-in-emacs-el.html
(cl-defmacro req (lib &rest body)
  "load library if file is exits"
  (declare (debug t)
           (indent 1))
  `(cond
     ((locate-library (symbol-name ,lib))
      (require ,lib nil 'noerror)
      (muki:log "loading " (propertize (symbol-name ,lib)
                                       'face 'font-lock-variable-name-face))
      ,@body
      (muki:log "loaded " (propertize (symbol-name ,lib)
                                      'face 'font-lock-keyword-face)))
     (t (message "%s not loaded" (symbol-name ,lib)))))

(cl-defmacro pak (package &rest body)
  "execute body when package is installed"
  (declare (debug t)
           (indent 1))
  `(cond
     ((or (package-installed-p ,package)
          (locate-library (symbol-name ,package)))
      (muki:log "found package " (propertize (symbol-name ,package)
                                             'face 'font-lock-variable-name-face))
      ,@body)
     (t (message "%s not found" (symbol-name ,package)))))

(cl-defmacro liby (library &rest body)
  "execute body when library found"
  (declare (debug t)
           (indent 1))
  `(cond
     ((locate-library (symbol-name ,library))
      (muki:log "found library " (propertize (symbol-name ,library)
                                             'face 'font-lock-variable-name-face))
      ,@body)
     (t (message "%s not found" (symbol-name ,library)))))

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
     ,@(cl-mapcar
        (lambda (name)
          `(add-hook ',name (quote ,hookfunc)))
        hooknames)))

;; (lazyload (triger-function ...) "filename" &rest body)
;; http://e-arrows.sakura.ne.jp/2010/03/macros-in-emacs-el.html
(cl-defmacro lazyload (funcs lib)
  (declare (debug t))
  `(cl-locally
       ,@(cl-mapcar (lambda (f) `(autoload ',f ,lib nil t))
                    funcs)))

;; (append-to-list exec-path
;;                 '("/usr/bin" "/bin"
;;                   "/usr/sbin" "/sbin"))
(cl-defmacro append-to-list (to lst)
  (declare (debug t))
  `(setq ,to (append ,to ,lst)))

(cl-defun muki:add-to-load-path (path)
  (and (file-exists-p path)
       (add-to-list 'load-path (expand-file-name
                                (file-name-as-directory path)))))

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

(cl-defmacro set-option (&rest body)
  (declare (debug t))
  (and body
       (cl-letf ((option (car body))
                 (value (cadr body)))
         `(cl-locally
              (muki:log "set " ,(propertize (symbol-name option)
                                            'face 'font-lock-variable-name-face))
            (setq ,option ,value)
            (set-option ,@(cddr body))))))

(cl-defmacro enable-option (&rest body)
  (declare (debug t))
  (and body
       (cl-letf ((option (car body)))
         `(cl-locally
              (muki:log "enable " ,(propertize (symbol-name option)
                                               'face 'font-lock-variable-name-face))
            (setq ,option t)
            (enable-option ,@(cdr body))))))

(cl-defmacro disable-option (&rest body)
  (declare (debug t))
  (and body
       (cl-letf ((option (car body)))
         `(cl-locally
              (muki:log "disable " ,(propertize (symbol-name option)
                                                'face 'font-lock-variable-name-face))
            (setq ,option nil)
            (disable-option ,@(cdr body))))))

(cl-defmacro enable-mode (mode-fn)
  (declare (debug t))
  `(cl-locally
       (,mode-fn 1)
     (muki:log "enable mode " ,(propertize (symbol-name mode-fn)
                                           'face 'font-lock-variable-name-face))))

(cl-defmacro disable-mode (mode-fn)
  (declare (debug t))
  `(cl-locally
       (,mode-fn -1)
     (muki:log "disable mode " ,(propertize (symbol-name mode-fn)
                                            'face 'font-lock-variable-name-face))))

;;http://www.reddit.com/r/emacs/comments/umb24/expandfilename_is_good_for_path_concat_too/
(cl-defun concat-path (&rest parts)
  (cl-reduce (lambda (a b) (expand-file-name b a)) parts))

(cl-defun muki:lisp-before-save-hook ()
  (save-excursion
    (goto-char (point-min))
    (delete-trailing-whitespace)
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
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max)))

;; prelude/init.el
(cl-defun add-subdirs-to-load-path (parent-dir)
  "add all first level `parent-dir' subdirs to the
emacs load path"
  (cl-dolist (f (directory-files parent-dir))
    (cl-letf ((name (expand-file-name f parent-dir)))
      (and (file-directory-p name)
           (not (equal f ".."))
           (not (equal f "."))
           (add-to-list 'load-path name)))))

;; kill other buffers
(cl-defun kill-other-buffers ()
  "kill all buffers but the current on.
Don't mess with special buffers."
  (interactive)
  (cl-dolist (buffer (buffer-list))
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
          (cl-remove-if-not
           '(lambda (buffer)
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
                    (equal 'exit
                           (process-status
                            (get-buffer-process buffer)))
                  t))))
           (buffer-list)))
         (buffers-to-kill
          (set-difference interested-buffers
                          (mapcar '(lambda (buffer-name)
                                    (get-buffer buffer-name))
                                  no-kill-buffer-names))))
    (mapc 'kill-buffer buffers-to-kill)))

(require 'muki-keys)

(provide 'muki)

;;; muki.el ends here
