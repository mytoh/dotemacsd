;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

;; [[http://manuel-uberti.github.io/emacs/2017/02/04/guess-language/][Automatic language detection for Flyspell – Manuel Uberti]]
(use-package guess-language         ; Automatically detect language for Flyspell
  :commands (guess-language-mode)
  :init (add-hook 'text-mode-hook #'guess-language-mode)
  :config
  (setq guess-language-langcodes '((en . ("en_GB" "English"))
                                   (fi . ("fi_FI" "Finnish")))
        guess-language-languages '(en fi)
        guess-language-min-paragraph-length 45)
  :diminish guess-language-mode)



;;; init.el ends here
