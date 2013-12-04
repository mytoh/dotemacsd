
;; eshell


;;; switch to eshell or restore previous windows
;;; http://irreal.org/blog/?p=1742
(cl-defun my-eshell-switch ()
  "Bring up a full-screen eshell or restore previous config."
  (interactive)
  (if (string= "eshell-mode" major-mode)
      (jump-to-register :eshell-fullscreen)
    (progn
      (window-configuration-to-register :eshell-fullscreen)
      (eshell)
      (delete-other-windows))))

;;; use shell-pop instead
;; (define-key global-map (kbd "C-z") 'my-eshell-switch)

;;; eshell keybind
(cl-defun my-eshell-hook-keybindings ()
  (define-key eshell-mode-map (kbd "C-p") 'eshell-previous-matching-input-from-input)
  (define-key eshell-mode-map (kbd "C-n") 'eshell-next-matching-input-from-input)
  (define-key eshell-mode-map (kbd "C-a") 'eshell-bol))
(add-hook 'eshell-mode-hook
          'my-eshell-hook-keybindings)


;;; start eshell
;; (add-hook 'after-init-hook
;;           #'(lambda ()
;;               (let ((default-directory (getenv "HOME")))
;;                 (command-execute 'eshell)
;;                 (bury-buffer))))


;;; disable hl-line
;; (cl-defun my-eshell-hook-disable-hl-line ()
;;   (set (make-local-variable 'hl-line-range-function)
;;        (lambda ()
;;          '(0 . 0))))

;; (add-hook 'eshell-mode-hook
;;           #'my-eshell-hook-disable-hl-line)


;;; http://nishikawasasaki.hatenablog.com/entry/2012/09/12/233116
;;; auto-complete
;;; require 'auto-complete in paketti-auto-complete
;; (require 'pcomplete)
(cl-defun my-ac-eshell-mode ()
  (ac-define-source pcomplete
                    '((candidates . pcomplete-completions)))
  (setq ac-sources
        '(ac-source-pcomplete
          ac-source-filename
          ac-source-files-in-current-dir
          ac-source-words-in-buffer
          ac-source-dictionary)))
;; (add-hook 'eshell-mode-hook
;;           #'(lambda ()
;;               (my-ac-eshell-mode)
;;               ;; (define-key eshell-mode-map [(tab)] 'auto-complete)
;;               ;; (define-key eshell-mode-map (kbd "C-i") 'auto-complete)
;;               ))

;;; alias
(cl-defun my-eshell-hook-add-aliases ()
  (setq eshell-command-aliases-list
        (append '(( "ag" "ag --nopager")
                  ( "," "napa $*")
                  ( "kuva" "pikkukivi kuva $*")
                  ( "yotsuba" "pikkukivi yotsuba $*")
                  ( "futaba" "piki futaba $*")
                  ( "df" "df -h")
                  ( "tk" "talikko $*")
                  ( "la" "ls -a")
                  ( "ll" "ls -l")
                  ( "d" "dired $1")
                  ( "ff" "find-file  $1"))
                eshell-command-aliases-list)))
(add-hook 'eshell-mode-hook
          #'my-eshell-hook-add-aliases)

;;; helm history
(add-hook 'eshell-mode-hook
          #'(lambda ()
              (define-key eshell-mode-map
                (kbd "M-p")
                'helm-eshell-history)))

;;; helm complete
(req 'helm-eshell
     (add-hook 'eshell-mode-hook
               #'(lambda ()
                   (define-key eshell-mode-map (kbd "C-i") 'helm-esh-pcomplete))))



;; load prompt settings
(require 'paketti-eshell-prompt)


(provide 'paketti-eshell)
