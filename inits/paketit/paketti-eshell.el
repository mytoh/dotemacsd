
;; eshell

(eval-when-compile
  (require 'cl-lib)
  (require 'esh-mode)
  (require 'eshell))

(require 'esh-util)

;;; prefer lisp function
(enable-option eshell-prefer-lisp-functions)

;;; switch to eshell or restore previous windows
;;; http://irreal.org/blog/?p=1742
(cl-defun mytoh:eshell-switch ()
  "Bring up a full-screen eshell or restore previous config."
  (interactive)
  (if (string= "eshell-mode" major-mode)
      (jump-to-register :eshell-fullscreen)
    (progn
      (window-configuration-to-register :eshell-fullscreen)
      (eshell)
      (delete-other-windows))))

;;; use shell-pop instead
(define-key global-map (kbd "C-c e s") 'mytoh:eshell-switch)

;;; eshell keybind
(cl-defun my-eshell-hook-keybindings ()
  (define-key eshell-mode-map (kbd "C-p") 'eshell-previous-matching-input-from-input)
  (define-key eshell-mode-map (kbd "C-n") 'eshell-next-matching-input-from-input)
  ;; (define-key eshell-mode-map (kbd "C-a") 'eshell-bol)
  )
(add-hook 'eshell-mode-hook
          'my-eshell-hook-keybindings)


;;; start eshell
;; (add-hook 'after-init-hook
;;           #'(lambda ()
;;               (cl-letf ((default-directory (getenv "HOME")))
;;                 (command-execute 'eshell)
;;                 (bury-buffer))))


;;; disable hl-line
;; (cl-defun my-eshell-hook-disable-hl-line ()
;;   (set (make-local-variable 'hl-line-range-function)
;;        (lambda ()
;;          '(0 . 0))))

;; (add-hook 'eshell-mode-hook
;;           #'my-eshell-hook-disable-hl-line)


;;; helm history
(add-hook 'eshell-mode-hook
          #'(lambda ()
              (define-key eshell-mode-map
                (kbd "M-p")
                'helm-eshell-history)))

;;; helm complete
(add-hook 'eshell-mode-hook
          #'(lambda ()
              (define-key eshell-mode-map
                [remap eshell-pcomplete]
                'helm-esh-pcomplete)))

;;; start eshell after startup
(add-hook 'emacs-startup-hook #'(lambda ()
                                  (let ((default-directory (getenv "HOME")))
                                    (command-execute 'eshell)
                                    (bury-buffer))))

;; load prompt settings
(require 'paketti-eshell-prompt)


(provide 'paketti-eshell)
