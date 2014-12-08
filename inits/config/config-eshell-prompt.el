
(require 'vc-git)

(defface muki:eshell-pwd
    '((t (:foreground "#93b8bb")))
  "eshell prompt current directory face")

(defface muki:eshell-char
    '((t (:foreground "#e6ae2e")))
  "eshell prompt prompt character face")

(defface muki:eshell-branch
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
   (muki:eshell-propertize (abbreviate-file-name (eshell/pwd)) 'muki:eshell-pwd)
   "  "
   (muki:eshell-propertize (muki:eshell-git-branch) 'muki:eshell-branch)
   "\n"
   (muki:eshell-propertize "#;" 'muki:eshell-char)
   " "))

;; remove highlight, must be set
(setq eshell-highlight-prompt nil)

(setq eshell-prompt-function #'muki:eshell-prompt-function
      eshell-prompt-regexp
      (concat "^\\([^\n]+\n\\|#; \\)"))

(provide 'config-eshell-prompt)
