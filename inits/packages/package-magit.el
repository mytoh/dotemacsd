
(defun my-magit-highlights ()
  (set-face-attribute 'magit-diff-add nil :foreground "#40ff40" :background nil)
  (set-face-attribute 'magit-diff-del nil :foreground "#ff4040" :background nil)
  (set-face-attribute 'magit-item-highlight   nil :foreground "#202020" :background nil)
  (set-face-attribute 'magit-diff-file-header nil :foreground "#4040ff" :background nil))

(defun my-magit-setup ()
  (eval-after-load "magit"
    #'(my-magit-highlights))

  (setq magit-diff-refine-hunk 'all)

  ;; auto fill
  (add-hook 'magit-log-edit-mode-hook
            #'(lambda ()
                (set (make-local-variable 'fill-column) 72)
                (turn-on-auto-fill))))

(req 'magit
     (my-magit-setup))


(provide 'package-magit)
