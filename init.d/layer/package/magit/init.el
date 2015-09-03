
(cl-defun muki:magit-highlights ()
  (set-face-attribute 'magit-diff-add nil
                      :foreground (face-foreground 'font-lock-doc-face)
                      :background nil)
  (set-face-attribute 'diff-refine-added nil :foreground "green3" :background nil :inherit nil)
  (set-face-attribute 'magit-diff-del nil :foreground "red3" :background nil)
  (set-face-attribute 'diff-refine-removed nil :foreground "red3"  :background nil :inherit nil)
  (set-face-attribute 'magit-diff-file-header nil :foreground "#4040ff" :background nil)
  (set-face-attribute 'magit-item-highlight nil :foreground nil)
  (set-face-background 'magit-item-highlight "#121212")
  )

;; (after 'magit
;;        (muki:magit-highlights))

(cl-defun muki:magit-setup ()
  (set-option magit-diff-refine-hunk 'all)
  (set-option magit-repository-directories `(,(muki:expand-path-huone "ateljee")))
  (disable-option magit-push-always-verify)
  ;; auto fill
  (hook 'magit-log-edit-mode-hook
        (clambda ()
            (set (make-local-variable 'fill-column) 72)
          (turn-on-auto-fill))))

(command (magit-status) "magit")

(liby 'magit
  (muki:magit-setup))
