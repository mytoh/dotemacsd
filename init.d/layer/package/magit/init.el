
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

(cl-defun muki:magit-commit-add-log-insert (buffer file defun)
  (cl-letf ((modified (if (string-match-p "^init\.d/layer/.*/init\.el" file)
                          (seq-take (seq-subseq file 13)
                                    (- (seq-length (seq-subseq file 13))
                                       (+ 1 (seq-length "init.el"))))
                        file)))
    (magit-commit-add-log-insert buffer modified defun)))


(cl-defun muki:magit-setup ()
  (after 'magit
    (validate-setq magit-diff-refine-hunk 'all)
    (validate-setq magit-repository-directories `((,(muki:expand-path-huone "ateljee") . 1)))
    (validate-setq magit-revision-show-gravatars
                   '("^Author:     " . "^Commit:     "))
    (validate-setq magit-commit-add-log-insert-function
                   'muki:magit-commit-add-log-insert)
    
    (add-to-list 'magit-diff-arguments "--ignore-blank-lines")
    (add-to-list 'magit-diff-arguments "--ignore-space-at-eol")
    (add-to-list 'magit-diff-arguments "--ignore-space-change")
    (add-to-list 'magit-diff-arguments "--ignore-all-space"))
  
  ;; auto fill
  (hook 'magit-log-edit-mode-hook
        (clambda ()
          (set (make-local-variable 'fill-column) 72)
          (turn-on-auto-fill)))

  ;; evil setting
  (after 'evil
    (after 'magit
      (evil-set-initial-state 'magit-popup-mode 'emacs)))
  )

(liby 'magit
  (command (magit-status magit-log magit-init
                         magit-list-repositories)
           "magit")
  (muki:magit-setup)
  )
