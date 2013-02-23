
;; eshell
(setq eshell-cmpl-ignore-case t)
(setq eshell-ask-to-save-history 'always)
(setq eshell-cmpl-cycle-completions t)
(setq eshell-cmpl-cycle-cutoff-length 5)
(setq eshell-hist-ignoredups t)
(setq eshell-scroll-show-maximum-output t)

;; start eshell
(define-key global-map (kbd "C-z") 'eshell)

;; eshell keybind
(defun my-eshell-hook-keybindings ()
  (define-key eshell-mode-map (kbd "C-p") 'eshell-previous-matching-input-from-input)
  (define-key eshell-mode-map (kbd "C-n") 'eshell-next-matching-input-from-input))
(add-hook 'eshell-mode-hook
          'my-eshell-hook-keybindings)

;; em-smart
(require 'em-smart)
(setq eshell-where-to-jump 'begin)
(setq eshell-review-quick-commands nil)
(setq eshell-smart-space-goes-to-end t)


;; start eshell
(add-hook 'after-init-hook
          #'(lambda ()
              (lexical-let ((default-directory (getenv "HOME")))
                (command-execute 'eshell)
                (bury-buffer))))

;; load prompt settings
(require 'package-eshell-prompt)

;; helm
(add-hook 'eshell-mode-hook
          #'(lambda ()
              (define-key eshell-mode-map
                (kbd "M-p")
                'helm-eshell-history)
              ;; (define-key eshell-mode-map
              ;;   [remap pcomplete]
              ;;   'helm-esh-pcomplete)
              ))


;; disable hl-line
(defun my-eshell-hook-disable-hl-line ()
  (set (make-local-variable 'hl-line-range-function)
       (lambda ()
         '(0 . 0))))

(add-hook 'eshell-mode-hook
          'my-eshell-hook-disable-hl-line)

;; alias
(defun my-eshell-hook-add-aliases ()
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
          'my-eshell-hook-add-aliases)


(provide 'package-eshell)
