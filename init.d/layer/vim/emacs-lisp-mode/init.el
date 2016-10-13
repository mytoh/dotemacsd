;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(require 'muki-evil)
(require 'bind-map)

(cl-defun muki:emacs-lisp-test-run-buffer ()
  "from spacemacs/ert-run-tests-buffer"
  (interactive)
  (save-buffer)
  (load-file (buffer-file-name))
  (ert t))

(cl-defun muki:emacs-lisp-test-open-alternate-file ()
  "spacemacs/alternate-buffer"
  (interactive)
  (if-let ((root (vc-root-dir)))
      (cl-labels ((test-file-p (name)
                               (and (string-equal (file-name-nondirectory
                                                 (directory-file-name
                                                  (file-name-directory
                                                   (buffer-file-name))))
                                                "test")
                                  (string-match-p "-tests.el\\'" name))))
        (pcase (buffer-file-name)
          ((pred test-file-p)
           (cl-letf* ((buffers (buffer-list))
                      (test-file (file-name-base (buffer-file-name)))
                      (target-file (substring test-file 0
                                              (string-match-p "-tests\\'" test-file))))
             (if target-file
                 (cl-letf ((target-buffer (seq-find (lambda (b)
                                                      (when (buffer-file-name b)
                                                        (cl-equalp target-file
                                                                   (file-name-base (buffer-file-name b)))))
                                                    buffers)))
                   (if target-buffer
                       (switch-to-buffer target-buffer)
                     (switch-to-prev-buffer)))
               (switch-to-prev-buffer))))
          (_
           (cl-letf* ((test-dir (file-name-as-directory (expand-file-name "test" root)))
                      (current (file-name-base (buffer-file-name)))
                      (test-file (expand-file-name
                                  (concat current "-tests.el")
                                  test-dir)))
             (when test-file
               (find-file test-file))))))
    (message "not in a vc repository")))

;; from spacemacs github.com/syl20bnr/spacemacs/spacemacs/keybindings.el
;; emacs-lisp -----------------------------------------------------------------
(bind-map my-elisp-leader-map
  :evil-keys ("SPC m" ",")
  :evil-states (normal)
  :major-modes (emacs-lisp-mode
                lisp-interaction-mode))
(bind-map-set-keys my-elisp-leader-map
  "e$" #'lisp-state-eval-sexp-end-of-line
  "eb" #'eval-buffer
  "ee" #'eval-last-sexp
  "ep" #'pp-eval-last-sexp
  "ef" #'eval-defun
  "er" 'eval-region
  "el" #'lisp-state-eval-sexp-end-of-line
  ","  #'lisp-state-toggle-lisp-state
  "tf" #'muki:emacs-lisp-test-open-alternate-file
  "tb" #'muki:emacs-lisp-test-run-buffer
  "tq" #'ert

  "gg" #'xref-find-definitions-other-window
  "hh" #'elisp-slime-nav-describe-elisp-thing-at-point

  "=b" #'srefactor-lisp-format-buffer
  "=d" #'srefactor-lisp-format-defun
  "=o" #'srefactor-lisp-one-line
  "=s" #'srefactor-lisp-format-sexp
  )

(liby 'macrostep
  (bind-map-set-keys my-elisp-leader-map
    "dme" #'macrostep-expand))

(liby 'semantic-refactor
  (bind-map-set-keys my-elisp-leader-map
    "=b" #'srefactor-lisp-format-buffer
    "=d" #'srefactor-lisp-format-defun
    "=o" #'srefactor-lisp-one-line
    "=s" #'srefactor-lisp-format-sexp))

;;; init.el ends here
