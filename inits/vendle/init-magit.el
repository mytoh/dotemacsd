
(cl-defun muki:magit-highlights ()
  (set-face-attribute 'magit-diff-add nil :foreground "#40ff40" :background nil)
  (set-face-attribute 'magit-diff-del nil :foreground "#ff4040" :background nil)
  (set-face-attribute 'magit-diff-file-header nil :foreground "#4040ff" :background nil)
  (set-face-attribute 'magit-item-highlight nil :foreground nil))

(after "magit"
    (muki:magit-highlights))

(cl-defun muki:magit-setup ()
  (set-option magit-diff-refine-hunk 'all)
  (set-option magit-repo-dirs '("~/huone/projektit"))
  ;; auto fill
  (hook 'magit-log-edit-mode-hook
        (lambda ()
          (set (make-local-variable 'fill-column) 72)
          (turn-on-auto-fill))))

(autoload 'magit-status "magit")
(muki:define-launcher-key "g" 'magit-status)

(liby 'magit
  (muki:magit-setup))


(provide 'init-magit)
