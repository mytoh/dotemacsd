;;; config-autoinsert.el -*- lexical-binding: t -*-

;;;; [[http://d.hatena.ne.jp/higepon/20080731/1217491155]]
(require 'autoinsert)

;; テンプレートのディレクトリ
(setq auto-insert-directory (expand-file-name "inits/insert" user-emacs-directory))

;; dont show prompt
(setq auto-insert-query nil)

;; 各ファイルによってテンプレートを切り替える
(setq auto-insert-alist
      (nconc '(("\\.el$" . ["template.el" mytoh:elisp-template]))
             auto-insert-alist))
(require 'cl-lib)

;; ここが腕の見せ所
(defvar template-replacements-alists
  '(("%file%"             . (lambda () (file-name-nondirectory (buffer-file-name))))))

(defun mytoh:elisp-template ()
  (time-stamp)
  (mapc #'(lambda(c)
            (progn
              (goto-char (point-min))
              (replace-string (car c) (funcall (cdr c)) nil)))
        template-replacements-alists)
  (goto-char (point-max))
  (message "done."))
(add-hook 'find-file-not-found-hooks #'auto-insert)

(provide 'config-autoinsert)
