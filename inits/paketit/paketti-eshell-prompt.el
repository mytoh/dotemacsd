

(defface my-eshell-pwd-face
  '((t (:foreground "#93b8bb")))
  "eshell prompt current directory face")

(defface my-eshell-char-face
  '((t (:foreground "#2b4c7b")))
  "eshell prompt prompt character face")


;; prompt
(cl-defun my-eshell-propertize (s f)
  (propertize s 'face f))
(cl-defun my-eshell-prompt-function ()
  (concat
   (my-eshell-propertize (abbreviate-file-name (eshell/pwd)) 'my-eshell-pwd-face)
   "\n"
   (my-eshell-propertize "λ" 'my-eshell-char-face)
   " "))

;; remove highlight
(setq eshell-highlight-prompt nil)

;; (setq eshell-prompt-function 'my-eshell-prompt-function
;;       eshell-prompt-regexp (concat "^"
;;                                    "\\("
;;                                    "[^\n]+"
;;                                    "\\|"
;;                                    "λ "
;;                                    "\\)"))


(provide 'paketti-eshell-prompt)
