;;; lib-util.el  -*- lexical-binding: t -*-

(eval-when-compile
  (require 'cl-lib))

(cl-defmacro my-log (&rest messages)
  `(progn
     (message (concat (propertize ">> " 'face 'font-lock-doc-face)
                      ,@messages) " ...")))

;; http://e-arrows.sakura.ne.jp/2010/03/macros-in-emacs-el.html
(cl-defmacro req (lib &rest body)
  "load library if file is exits"
  `(cond
    ((locate-library (symbol-name ,lib))
     (require ,lib nil 'noerror)
     (my-log "loading " (propertize (symbol-name ,lib)
                                    'face 'font-lock-variable-name-face))
     ,@body
     (my-log "loaded " (propertize (symbol-name ,lib)
                                   'face 'font-lock-keyword-face)))
    (t (message "%s not loaded" (symbol-name ,lib)))))

(cl-defmacro pak (package &rest body)
  "execute body when package is installed"
  `(cond
    ((or (package-installed-p ,package)
         (locate-library (symbol-name ,package)))
     (my-log "found package " (propertize (symbol-name ,package)
                                          'face 'font-lock-variable-name-face))
     ,@body)
    (t (message "%s not found" (symbol-name ,package)))))

(cl-defmacro add-hook-fn (name &rest body)
  "(add-hook-fn 'php-mode-hook
                  (require 'symfony)
                  (setq tab-width 2)"
  `(add-hook ,name #'(lambda () ,@body)))

;; (lazyload (triger-function ...) "filename" &rest body)
(cl-defmacro lazyload (func lib &rest body)
  `(when (locate-library ,lib)
     ,@(cl-mapcar #'(lambda (f) `(autoload ',f ,lib nil t)) func)
     (eval-after-load ,lib
       '(progn
          ,@body)) t))

;; (append-to-list exec-path
;;                 '("/usr/bin" "/bin"
;;                   "/usr/sbin" "/sbin"))
(cl-defmacro append-to-list (to lst)
  `(cl-psetq ,to (append ,to ,lst)))

(cl-defmacro my-add-to-load-path (path)
  `(when (file-exists-p ,path)
     (add-to-list 'load-path ,path)))

(cl-defmacro my-set-face-colours (face fore back)
  `(progn
     (set-face-foreground ,face ,fore)
     (set-face-background ,face ,back)))

(cl-defmacro set-option (option value)
  `(progn
     (my-log "set " ,(propertize (symbol-name option)
                                 'face 'font-lock-variable-name-face))
     (cl-psetq ,option ,value)))

(cl-defmacro enable-option (option)
  `(progn
     (my-log "enable " ,(propertize (symbol-name option)
                                    'face 'font-lock-variable-name-face))
     (cl-psetq ,option t)))

(cl-defmacro disable-option (option)
  `(progn
     (message ">> disable %s" ,(symbol-name option))
     (cl-psetq ,option nil)))

;;http://www.reddit.com/r/emacs/comments/umb24/expandfilename_is_good_for_path_concat_too/
(cl-defun concat-path (&rest parts)
  (cl-reduce #'(lambda (a b) (expand-file-name b a)) parts))

(cl-defun my-before-save-hook ()
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

(cl-defun my-indent-buffer ()
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
(cl-defun mytoh:colour-hsl-to-hex (h s l)
  (cl-destructuring-bind (r g b)
      (color-hsl-to-rgb (/ h 360.0) (/ s 100.0) (/ l 100.0))
    (color-rgb-to-hex r g b)))

;;; my global map
(define-prefix-command 'my-global-map)
(global-set-key (kbd "C-c e") 'my-global-map)
(cl-defmacro mytoh:define-global-key (key func)
  "define personal global key mappings"
  `(progn
     (define-key my-global-map ,key ,func)
     (message "bind %s to %s" ,key (symbol-name ,func))))

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

(provide 'lib-util)
