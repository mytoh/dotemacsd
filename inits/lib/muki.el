;;; lib-util.el  -*- lexical-binding: t -*-

(eval-when-compile
  (require 'cl-lib)
  (require 'subr-x)
  (require 'color))

(cl-defmacro muki:log (&rest messages)
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
  `(cond
     ((or (package-installed-p ,package)
          (locate-library (symbol-name ,package)))
      (muki:log "found package " (propertize (symbol-name ,package)
                                             'face 'font-lock-variable-name-face))
      ,@body)
     (t (message "%s not found" (symbol-name ,package)))))

(cl-defmacro liby (library &rest body)
  "execute body when library found"
  `(cond
     ((locate-library (symbol-name ,library))
      (muki:log "found library " (propertize (symbol-name ,library)
                                             'face 'font-lock-variable-name-face))
      ,@body)
     (t (message "%s not found" (symbol-name ,library)))))

(cl-defmacro add-hook-fn (name &rest body)
  "(add-hook-fn 'php-mode-hook
                  (require 'symfony)
                  (setq tab-width 2)"
  `(add-hook ,name (lambda () ,@body)))

;; (lazyload (triger-function ...) "filename" &rest body)
;; http://e-arrows.sakura.ne.jp/2010/03/macros-in-emacs-el.html
(cl-defmacro lazyload (_funcs _lib)
  `(cl-locally
    ,@(cl-mapcar (lambda (f) `(autoload ',f ,_lib nil t))
                 _funcs)))

;; (append-to-list exec-path
;;                 '("/usr/bin" "/bin"
;;                   "/usr/sbin" "/sbin"))
(cl-defmacro append-to-list (to lst)
  `(setq ,to (append ,to ,lst)))

(cl-defmacro muki:add-to-load-path (path)
  `(when (file-exists-p ,path)
     (add-to-list 'load-path ,path)))

(cl-defmacro muki:set-face-colours (face fore back)
  `(cl-locally
    (set-face-foreground ,face ,fore)
    (set-face-background ,face ,back)))

(cl-defmacro set-option (&rest body)
  (when body
    (cl-letf ((option (car body))
              (value (cadr body)))
      `(cl-locally
        (muki:log "set " ,(propertize (symbol-name option)
                                      'face 'font-lock-variable-name-face))
        (setq ,option ,value)
        (set-option ,@(cddr body))))))

(cl-defmacro enable-option (&rest body)
  (when body
    (cl-letf ((option (car body)))
      `(cl-locally
        (muki:log "enable " ,(propertize (symbol-name option)
                                         'face 'font-lock-variable-name-face))
        (setq ,option t)
        (enable-option ,@(cdr body))))))

(cl-defmacro disable-option (&rest body)
  (when body
    (cl-letf ((option (car body)))
      `(cl-locally
        (muki:log "disable " ,(propertize (symbol-name option)
                                          'face 'font-lock-variable-name-face))
        (setq ,option nil)
        (disable-option ,@(cdr body))))))

(cl-defmacro enable-mode (mode-fn)
  `(cl-locally
    (,mode-fn 1)
    (muki:log "enable mode " ,(propertize (symbol-name mode-fn)
                                          'face 'font-lock-variable-name-face))))

(cl-defmacro disable-mode (mode-fn)
  `(cl-locally
    (,mode-fn -1)
    (muki:log "disable mode " ,(propertize (symbol-name mode-fn)
                                           'face 'font-lock-variable-name-face))))

;;http://www.reddit.com/r/emacs/comments/umb24/expandfilename_is_good_for_path_concat_too/
(cl-defun concat-path (&rest parts)
  (cl-reduce (lambda (a b) (expand-file-name b a)) parts))

(cl-defun muki:before-save-hook ()
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
      (when (and (file-directory-p name)
                 (not (equal f ".."))
                 (not (equal f ".")))
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

;;; my global map
(defcustom muki:global-prefix-key
  "C-c e"
  "personal global prefix key")
(setq muki:global-map (make-sparse-keymap))
(cl-defun muki:define-global-key (keymap func)
  "define personal global key mappings"
  (cl-letf ((key (concat (kbd muki:global-prefix-key) keymap)))
    (define-key muki:global-map key func)
    (message "bind %s to %s" keymap (symbol-name func))))
(define-minor-mode muki-mode
    "muki keymapping"
  :keymap muki:global-map
  :lighter " ☕"
  :global t :init-value t)

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


(cl-defmacro muki:comment (&rest body)
  t)

(provide 'muki)
