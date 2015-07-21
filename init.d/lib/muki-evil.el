;;; muki-evil -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(require 'evil)
(require 'evil-leader)

(cl-defmacro muki:evil-leader-define-local-leader-key (keymap key def)
  `(evil-define-key 'normal ,keymap
     ,(seq-concatenate 'string "," key)
     ,def))

(cl-defmacro muki:evil-leader-define-local-leader-keys (keymap &rest bindings)
  (and bindings
       `(cl-locally
            (muki:evil-leader-define-local-leader-key ,keymap
                                                      ,(car bindings)
                                                      ,(cadr bindings))
          (muki:evil-leader-define-local-leader-keys ,keymap ,@(cddr bindings)))))

;; (muki:evil-leader-define-local-leader-keys emacs-lisp-mode-map
;;                                            "ee" #'eval-last-sexp
;;                                            "eb" #'eval-buffer)

(cl-defmacro muki:evil-leader-define-major-mode-key (mode key def)
  `(evil-leader/set-key-for-mode ',mode
       ,(seq-concatenate 'string "m" key)
     ,def))

(cl-defmacro muki:evil-leader-define-major-mode-keys (mode &rest bindings)
  (and bindings
       `(cl-locally
            (muki:evil-leader-define-major-mode-key ,mode
                                                    ,(car bindings)
                                                    ,(cadr bindings))
          (muki:evil-leader-define-major-mode-keys ,mode
                                                   ,@(cddr bindings)))))

;; (muki:evil-leader-define-major-mode-keys emacs-lisp-mode
;;                                          "ee" #'eval-last-sexp
;;                                          "eb" #'eval-buffer)

(cl-defmacro muki:evil-leader-define-key-for-mode (mode-and-map &rest bindings)
  (declare (debug t)
           (indent 1))
  (and bindings
       `(cl-locally
            (muki:evil-leader-define-major-mode-keys ,(car mode-and-map)
                                                     ,@bindings)
          (muki:evil-leader-define-local-leader-keys ,(cadr mode-and-map)
                                                     ,@bindings)
          (muki:evil-leader-define-key-for-mode ,mode-and-map)
          ,@(cddr bindings))))

(provide 'muki-evil)

;;; muki-evil.el ends here