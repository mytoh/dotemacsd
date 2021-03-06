;;; config-autoinsert.el -*- lexical-binding: t; coding: utf-8 -*-

;;;; [[http://d.hatena.ne.jp/higepon/20080731/1217491155]]
(require 'autoinsert)

;; テンプレートのディレクトリ
(validate-setq auto-insert-directory (locate-user-emacs-file "init.d/insert" ))

;; dont show prompt
(validate-setq auto-insert-query nil)

;; 各ファイルによってテンプレートを切り替える
(validate-setq auto-insert-alist
               (nconc '(("\\.el\\'" . ["template.el" muki:elisp-template])
                        ("\\.scm\\'" . ["template.scm" muki:scheme-template])
                        ("\\.sh\\'" . ["template.sh" muki:shell-template]))
                      auto-insert-alist))
(require 'cl-lib)

;; ここが腕の見せ所
(defvar template-replacements-alists
  '(("%file-base%" . (lambda () (file-name-base (file-name-nondirectory (buffer-file-name)))))
    ("%file%"             . (lambda () (file-name-nondirectory (buffer-file-name))))))

(defun muki:elisp-template ()
  (time-stamp)
  (seq-each (lambda (c)
              (cl-locally
               (goto-char (point-min))
               (search-forward (car c))
               (replace-match (funcall (cdr c)))
               ;; (replace-string (car c) (funcall (cdr c)) nil)
               ))
            template-replacements-alists)
  (goto-char (point-max))
  (message "done."))

(defun muki:scheme-template ()
  (time-stamp)
  (seq-each (lambda (c)
              (cl-locally
               (goto-char (point-min))
               (search-forward (car c))
               (replace-match (funcall (cdr c)))
               ;; (replace-string (car c) (funcall (cdr c)) nil)
               ))
            template-replacements-alists)
  (goto-char (point-max))
  (message "done."))

(defun muki:shell-template ()
  (time-stamp)
  (seq-each (lambda (c)
              (cl-locally
               (goto-char (point-min))
               (search-forward (car c))
               (replace-match (funcall (cdr c)))
               ;; (replace-string (car c) (funcall (cdr c)) nil)
               ))
            template-replacements-alists)
  (goto-char (point-max))
  (message "done."))

(add-hook 'find-file-not-found-hooks #'auto-insert)
