;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; web-beatify
(use-package web-beautify
  :commands (web-beautify-css
             web-beautify-css-buffer
             web-beautify-js
             web-beautify-js-buffer
             web-beautify-html
             web-beautify-html-buffer)
  :init
  (progn
    (after 'js2-mode
      (define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))
    (after 'json-mode
      '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))
    (after 'sgml-mode
      (define-key html-mode-map (kbd "C-c b") 'web-beautify-html))
    (after 'css-mode
      (define-key css-mode-map (kbd "C-c b") 'web-beautify-css))

    ;; If you want to automatically format before saving a file,
    ;; add the following hook to your Emacs configuration:

    (after 'js2-mode
      (add-hook 'js2-mode-hook
                (lambda ()
                  (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

    (after 'json-mode
      (add-hook 'json-mode-hook
                (lambda ()
                  (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

    (after 'sgml-mode
      (add-hook 'html-mode-hook
                (lambda ()
                  (add-hook 'before-save-hook 'web-beautify-html-buffer t t)))))


  ;; (after 'css-mode
  ;;     (add-hook 'css-mode-hook
  ;;      (clambda ()
  ;;          (add-hook 'before-save-hook #'web-beautify-css-buffer t t))))
  )

;;; init.el ends here
