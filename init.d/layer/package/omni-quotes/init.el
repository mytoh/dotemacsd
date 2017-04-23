;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package omni-quotes
  ;; :bind (("M-s q m" . omni-quotes-mode)
  ;;        ("M-s q p" . omni-quotes-prev-set)
  ;;        ("M-s q n" . omni-quotes-next-set)
  ;;        ("M-s q q" . omni-quotes-display-random-quote))
  :config
  ;; (omni-quotes-load-simple-quote-file "~/.my-quote" "personal")
  (omni-quotes-mode)
  )

;;; init.el ends here
