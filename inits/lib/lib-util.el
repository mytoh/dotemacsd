;;; -*- coding: utf-8 -*-

(eval-when-compile
  (require 'cl-lib)
  )

(cl-defmacro my-log (&rest messages)
  `(message (concat (propertize ">> " 'face 'font-lock-doc-face)
                    ,@messages)))

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

(cl-defmacro add-hook-fn (name &rest body)
  "(add-hook-fn 'php-mode-hook
                  (require 'symfony)
                  (setq tab-width 2)"
  `(add-hook ,name #'(lambda () ,@body)))

;; (lazyload (triger-function ...) "filename" &rest body)
(cl-defmacro lazyload (func lib &rest body)
  `(when (locate-library ,lib)
     ,@(mapcar #'(lambda (f) `(autoload ',f ,lib nil t)) func)
     (eval-after-load ,lib
       '(progn
          ,@body)) t))

;; (append-to-list exec-path
;;                 '("/usr/bin" "/bin"
;;                   "/usr/sbin" "/sbin"))
(cl-defmacro append-to-list (to lst)
  `(setq ,to (append ,lst ,to)))

(cl-defmacro my-add-to-load-path (path)
  `(when (file-exists-p ,path)
     (add-to-list 'load-path ,path)))

(cl-defmacro my-set-face-colours (face fore back)
  `(progn
     (set-face-foreground ,face ,fore)
     (set-face-background ,face ,back)))



(cl-defmacro enable-option (option)
  `(progn
     (my-log "enable " ,(propertize (symbol-name option)
                                    'face 'font-lock-variable-name-face))
     (setq ,option 1)))

(cl-defmacro disable-option (option)
  `(progn
     (message ">> disable %s" ,(symbol-name option))
     (setq ,option -1)))

;;http://www.reddit.com/r/emacs/comments/umb24/expandfilename_is_good_for_path_concat_too/
(cl-defun concat-path (&rest parts)
  (cl-reduce (lambda (a b) (expand-file-name b a)) parts))

(defun my-before-save-hook ()
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

(defun my-indent-buffer ()
  "milkypostman/dotemacs/defun.el"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max)))

;; prelude/init.el
(defun add-subdirs-to-load-path (parent-dir)
  "add all first level `parent-dir' subdirs to the
emacs load path"
  (dolist (f (directory-files parent-dir))
    (let ((name (expand-file-name f parent-dir)))
      (when (and (file-directory-p name)
                 (not (equal f ".."))
                 (not (equal f ".")))
        (add-to-list 'load-path name)))))

(provide 'lib-util)
