;;; paketti-diff-hl.el -*- lexical-binding: t -*-

(pak 'diff-hl
     (diff-hl-margin-mode)

     (add-hook 'prog-mode-hook 'turn-on-diff-hl-mode)
     (add-hook 'vc-dir-mode-hook 'turn-on-diff-hl-mode)

     (defun my-diff-hl-update ()
       (with-current-buffer (current-buffer) (diff-hl-update)))

     (add-hook 'magit-refresh-file-buffer-hook 'my-diff-hl-update))

(provide 'paketti-diff-hl)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
