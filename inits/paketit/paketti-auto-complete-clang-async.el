
(req 'auto-complete-clang-async

     (cl-defun ac-cc-mode-setup ()
       (setq ac-clang-complete-executable "~/.emacs.d/clang-complete")
       (setq ac-sources '(ac-source-clang-async))
       (ac-clang-launch-completion-process))

     (cl-defun muki:ac-config ()
       (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
       (add-hook 'auto-complete-mode-hook 'ac-common-setup)
       (global-auto-complete-mode t))

     (muki:ac-config))
