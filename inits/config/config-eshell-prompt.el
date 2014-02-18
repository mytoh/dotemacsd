
(defface muki:eshell-pwd-face
  '((t (:foreground "#93b8bb")))
  "eshell prompt current directory face")

(defface muki:eshell-char-face
  '((t (:foreground "#e6ae2e")))
  "eshell prompt prompt character face")

;; prompt
(cl-defun muki:eshell-propertize (s f)
  (propertize s 'face f))

(cl-defun muki:eshell-prompt-function ()
  (concat
   "[0m"
   (muki:eshell-propertize (abbreviate-file-name (eshell/pwd)) 'muki:eshell-pwd-face)
   "\n"
   (muki:eshell-propertize "X / _ / X" 'muki:eshell-char-face)
   " "))

;; remove highlight, must be set
(setq eshell-highlight-prompt nil)

(setq eshell-prompt-function 'muki:eshell-prompt-function
      eshell-prompt-regexp
      (concat "^\\([^\n]+\n\\|X / _ / X \\)"))

(provide 'config-eshell-prompt)
