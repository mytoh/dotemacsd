;;; lang-scheme.el -*- coding: utf-8; lexical-binding: t -*-

(req 'seq)

;;;; keymap
;; (define-key emacs-lisp-mode-map (kbd "C-m") 'newline-and-indent)


(cl-defun muki:scheme-add-keywords (face-name keyword-rules)
  (cl-letf* ((keyword-list (seq-map (lambda (x)
                                      (symbol-name (cdr x)))
                                    keyword-rules))
             (keyword-regexp (concat "(\\("
                                     (regexp-opt keyword-list)
                                     "\\)[ \n]")))
    (muki:log "adding keywords for face "
              (propertize (symbol-name face-name) 'face 'font-lock-variable-name-face)
              " on scheme mode")
    (font-lock-add-keywords 'scheme-mode
                            `((,keyword-regexp 1 ',face-name))))
  (seq-each (lambda (x)
              (put (cdr x)
                   'scheme-indent-function
                   (car x)))
            keyword-rules))

;; (setq process-coding-system-alist
;;       (cons '("mosh" utf-8 . utf-8) process-coding-system-alist))
;; (setq scheme-program-name "mosh")
;; (autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
;; (autoload 'run-scheme  "cmuscheme" "Run an inferior Scheme process." t)

;;  gauche
(setq process-coding-system-alist
      (cons '("gosh" utf-8 . utf-8) process-coding-system-alist))
(setq scheme-program-name "gosh -r7 -i -I.")
(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
(autoload 'run-scheme  "cmuscheme" "Run an inferior Scheme process." t)

;; http://valvallow.blogspot.jp/2011/03/emacs-scheme-gauche.html
(cl-defun muki:scheme-other-window ()
  "run scheme on other window"
  (interactive)
  (split-window-horizontally 110)
  (cl-letf ((buf-name (buffer-name (current-buffer))))
    (switch-to-buffer-other-window
     (get-buffer-create "*scheme*"))
    (run-scheme scheme-program-name)
    (switch-to-buffer-other-window
     (get-buffer-create buf-name))))

(cl-defun muki:scheme-mode-hook ()
  (add-key scheme-mode-map "C-c C-s" 'muki:scheme-other-window)
  (cl-dolist (f '(muki:lisp-cleanup
                  whitespace-cleanup
                  muki:lisp-before-save-hook))
    (add-hook 'before-save-hook f nil t))
  ;; (setq mode-name " ☯ ")
  )
(add-hook 'scheme-mode-hook 'muki:scheme-mode-hook)

;; (cl-defun muki:inferior-scheme-mode-hook ()
;;   (local-set-key (kbd "C-p") 'comint-previous-input)
;;   (local-set-key (kbd "C-n") 'comint-next-line))
;; (add-hook 'inferior-scheme-mode-hook 'muki:inferior-scheme-mode-hook)



;;http://d.hatena.ne.jp/kobapan/20091205/1259972925
;; scheme-mode-hook
(defvar ac-source-scheme
  '((candidates
     (lambda ()
       (req 'scheme-complete)
       (all-completions ac-target (car (scheme-current-env))))))
  "Source for scheme keywords.")
;; (add-hook 'scheme-mode-hook
;;           (lambda ()
;;               (make-local-variable 'ac-sources)
;;               (add-to-list 'ac-sources 'ac-source-scheme)))

;; scheme mode recognition
(cl-defun muki:add-scheme-mode (ext)
  (add-to-list 'auto-mode-alist `(,(concat "\\." ext "\\'") . scheme-mode)))

(cl-dolist (e '("lehspec"
                "sps"
                "sls"
                "sld"
                "ss"))
  (muki:add-scheme-mode e))
(add-to-list 'auto-mode-alist '("Piikafile" . scheme-mode))

;; personal syntax
;; (muki:scheme-add-keywords
;;  'font-lock-builtin-face
;;  '((1 . match)
;;    (1 . match-short-command)))

;; (muki:scheme-add-keywords
;;  'font-lock-keyword-face
;;  '((1 . define-case)
;;    (1 . define-match)))



(provide 'lang-scheme)
