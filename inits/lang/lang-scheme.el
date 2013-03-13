
(defun minun:scheme-add-keywords (face-name keyword-rules)
  (lexical-let* ((keyword-list (mapcar #'(lambda (x)
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
  (mapc #'(lambda (x)
            (put (cdr x)
                 'scheme-indent-function
                 (car x)))
        keyword-rules))


(setq process-coding-system-alist
      (cons '("mosh" utf-8 . utf-8) process-coding-system-alist))
(setq scheme-program-name "mosh")
(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
(autoload 'run-scheme  "cmuscheme" "Run an inferior Scheme process." t)




(defun minun:scheme-other-window ()
  "run scheme on other window"
  (interactive)
  (split-window-horizontally 90)
  (lexical-let ((buf-name (buffer-name (current-buffer))))
    (switch-to-buffer-other-window
     (get-buffer-create "*scheme*"))
    (run-scheme scheme-program-name)
    (switch-to-buffer-other-window
     (get-buffer-create buf-name))))


(defun minun:scheme-mode-hook ()
  (define-key my-original-map (kbd "C-s") 'minun:scheme-other-window)
  (local-set-key (kbd "C-m") 'newline-and-indent)
  (define-key scheme-mode-map (kbd "C-m") 'newline-and-indent)
  (dolist (f '(minun:lisp-cleanup
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
       (my-req 'scheme-complete)
       (all-completions ac-target (car (scheme-current-env))))))
  "Source for scheme keywords.")
(add-hook 'scheme-mode-hook
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-scheme)))

;; scheme mode recognition
(defun minun:add-scheme-mode (ext)
  (add-to-list 'auto-mode-alist `(,(concat "\\." ext "\\'") . scheme-mode)))

(dolist (e '("leh"
             "lehspec"
             "sps"
             "sls"
             "sld"
             "ss"))
  (minun:add-scheme-mode e))

;; personal syntax
(minun:scheme-add-keywords
 'font-lock-builtin-face
 '((1 . define-case)
   (1 . define-match)
   (1 . match)
   (1 . match-short-command)))



(provide 'lang-scheme)
