
(cl-defun my-magit-highlights ()
  (set-face-attribute 'magit-diff-add nil :foreground "#40ff40" :background nil)
  (set-face-attribute 'magit-diff-del nil :foreground "#ff4040" :background nil)
  (set-face-attribute 'magit-diff-file-header nil :foreground "#4040ff" :background nil))

(with-eval-after-load "magit"
  (my-magit-highlights))

(cl-defun my-magit-setup ()
  (setq magit-diff-refine-hunk 'all)
  (setq magit-repo-dirs '("~/huone/projektit"))
  ;; auto fill
  (add-hook 'magit-log-edit-mode-hook
            (lambda ()
              (set (make-local-variable 'fill-column) 72)
              (turn-on-auto-fill))))

(mytoh:define-global-key (kbd "g") 'magit-status)

(pak 'magit
     (my-magit-setup))


(provide 'paketti-magit)
