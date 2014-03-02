
(defface muki:eshell-pwd-face
  '((t (:foreground "#93b8bb")))
  "eshell prompt current directory face")

(defface muki:eshell-char-face
  '((t (:foreground "#e6ae2e")))
  "eshell prompt prompt character face")

(defface muki:eshell-branch-face
  '((t (:foreground "#36ae9e")))
  "eshell prompt prompt branch face")

;; prompt
(cl-defun muki:eshell-propertize (s f)
  (propertize s 'face f))

(cl-defun muki:eshell-git-branch ()
  (cl-letf ((curbr (car (vc-git-branches))))
    (if (null curbr)
        ""
      curbr)))

(cl-defun muki:eshell-prompt-function ()
  (concat
   "[0m"
   (muki:eshell-propertize (abbreviate-file-name (eshell/pwd)) 'muki:eshell-pwd-face)
   "  "
   (muki:eshell-propertize (muki:eshell-git-branch) 'muki:eshell-branch-face)
   "\n"
   (muki:eshell-propertize "X / _ / X" 'muki:eshell-char-face)
   " "))

;; remove highlight, must be set
(setq eshell-highlight-prompt nil)

(setq eshell-prompt-function 'muki:eshell-prompt-function
      eshell-prompt-regexp
      (concat "^\\([^\n]+\n\\|X / _ / X \\)"))

(provide 'config-eshell-prompt)
