;;; lang-scheme.el -*- coding: utf-8; lexical-binding: t -*-
;;;; keymap
(define-key emacs-lisp-mode-map (kbd "C-m") 'newline-and-indent)

(cl-defun minun:scheme-add-keywords (face-name keyword-rules)
  (cl-letf* ((keyword-list (mapcar #'(lambda (x)
                                       (symbol-name (cdr x)))
                                   keyword-rules))
             (keyword-regexp (concat "(\\("
                                     (regexp-opt keyword-list)
                                     "\\)[ \n]")))
    (my-log "adding keywords for face "
            (propertize (symbol-name face-name) 'face 'font-lock-variable-name-face)
            " on scheme mode")
    (font-lock-add-keywords 'scheme-mode
                            `((,keyword-regexp 1 ',face-name))))
  (cl-mapc #'(lambda (x)
               (put (cdr x)
                    'scheme-indent-function
                    (car x)))
           keyword-rules))

(setq process-coding-system-alist
      (cons '("mosh" utf-8 . utf-8) process-coding-system-alist))
(setq scheme-program-name "mosh")
(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
(autoload 'run-scheme  "cmuscheme" "Run an inferior Scheme process." t)

(cl-defun minun:scheme-other-window ()
  "run scheme on other window"
  (interactive)
  (split-window-horizontally 90)
  (cl-letf ((buf-name (buffer-name (current-buffer))))
    (switch-to-buffer-other-window
     (get-buffer-create "*scheme*"))
    (run-scheme scheme-program-name)
    (switch-to-buffer-other-window
     (get-buffer-create buf-name))))


(cl-defun minun:scheme-mode-hook ()
  (define-key scheme-mode-map (kbd "C-s") 'minun:scheme-other-window)
  (local-set-key (kbd "C-m") 'newline-and-indent)
  (define-key scheme-mode-map (kbd "C-m") 'newline-and-indent)
  (cl-dolist (f '(minun:lisp-cleanup
                  whitespace-cleanup
                  my-before-save-hook))
    (add-hook 'before-save-hook f nil t)))
(add-hook 'scheme-mode-hook 'minun:scheme-mode-hook)

(cl-defun minun:inferior-scheme-mode-hook ()
  (local-set-key (kbd "C-p") 'comint-previous-input)
  (local-set-key (kbd "C-n") 'comint-next-line))
(add-hook 'inferior-scheme-mode-hook 'minun:inferior-scheme-mode-hook)



;;http://d.hatena.ne.jp/kobapan/20091205/1259972925
;; scheme-mode-hook
(defvar ac-source-scheme
  '((candidates
     (lambda ()
       (req 'scheme-complete)
       (all-completions ac-target (car (scheme-current-env))))))
  "Source for scheme keywords.")
;; (add-hook 'scheme-mode-hook
;;           #'(lambda ()
;;               (make-local-variable 'ac-sources)
;;               (add-to-list 'ac-sources 'ac-source-scheme)))

;; scheme mode recognition
(cl-defun minun:add-scheme-mode (ext)
  (add-to-list 'auto-mode-alist `(,(concat "\\." ext "\\'") . scheme-mode)))

(cl-dolist (e '("leh"
                "lehspec"
                "sps"
                "sls"
                "sld"
                "ss"))
  (minun:add-scheme-mode e))

;; personal syntax
(minun:scheme-add-keywords
 'font-lock-builtin-face
 '((1 . match)
   (1 . match-short-command)))

(minun:scheme-add-keywords
 'font-lock-keyword-face
 '((1 . define-case)
   (1 . define-match)))



(provide 'lang-scheme)
