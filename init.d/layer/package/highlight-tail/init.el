;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'highlight-tail
  (command (highlight-tail-mode) "highlight-tail")

  ;; https://gist.github.com/jasonm23/f4e97fd68fe88c9c1acc
  ;; Green flame
  ;; (setq  highlight-tail-colors '(("#000000" . 0)
  ;;                                ("#00FF00" . 1)
  ;;                                ("#006600" . 5)
  ;;                                ("#002F00" . 15)
  ;;                                ("#002C00" . 20)
  ;;                                ("#001500" . 25)
  ;;                                ("#001F00" . 30)
  ;;                                ("#000000" . 35)))
  (add-hook 'emacs-lisp-mode-hook #'highlight-tail-mode))


;;; init.el ends here
