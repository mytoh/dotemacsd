;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(require 'muki-evil)

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
        (if (test-file-p (buffer-file-name))
            (switch-to-buffer (other-buffer (current-buffer)))
          (cl-letf* ((test-dir (file-name-as-directory (expand-file-name "test" root)))
                     (current (file-name-base (buffer-file-name)))
                     (test-file (expand-file-name
                                 (concat current "-tests.el")
                                 test-dir)))
            (when test-file
              (find-file test-file)))))
    (message "not in a vc repository")))

;; from spacemacs github.com/syl20bnr/spacemacs/spacemacs/keybindings.el
;; emacs-lisp -----------------------------------------------------------------
(muki:evil-leader-define-key-for-mode (emacs-lisp-mode emacs-lisp-mode-map)
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
  "hh" #'elisp-slime-nav-describe-elisp-thing-at-point)


;;; init.el ends here
