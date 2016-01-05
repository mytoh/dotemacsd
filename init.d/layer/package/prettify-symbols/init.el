;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

;;;; prettify symbols
;; (enable-mode global-prettify-symbols-mode)
;;;; unprettify under cursor
;; (enable-option prettify-symbols-unprettify-at-point)

(set-option prettify-symbols-unprettify-at-point 'right-edge)

;;; enable only for few modes
(hook 'emacs-lisp-mode-hook #'prettify-symbols-mode)


;;; [[http://endlessparentheses.com/using-prettify-symbols-in-clojure-and-elisp-without-breaking-indentation.html?source=rss]]

;; We're going to play with this below.
(defvar endless/emacs-lisp-prettify-alist '())

(add-to-list 'endless/emacs-lisp-prettify-alist
             '("thread-first" . (?- (Br . Bc) ?- (Br . Bc) ?>)))
(add-to-list 'endless/emacs-lisp-prettify-alist
             '("thread-last" .  (?\s (Br . Bl) ?\s (Br . Bl) ?\s
                                 (Bl . Bl) ?- (Bc . Br) ?- (Bc . Bc) ?>
                                 (Bc . Bl) ?- (Br . Br) ?>)))

(cl-defun muki:emacs-lisp-add-prettify-symbols ()
  (setq-local prettify-symbols-alist
              (seq-concatenate 'list prettify-symbols-alist endless/emacs-lisp-prettify-alist))
  (add-to-list 'prettify-symbols-alist
               '("pcase-lambda" . ?\꓀
                 ;; ?\⫍ ?\⌦ ?\⍍ ?\⍃ ?\⎇ ?\⑁ ?\𝈑 ?\꓀ ?\꓃ ?\𝈄
                 ))
  (add-to-list 'prettify-symbols-alist
               '("pcase" . ?\⎇)))

(hook 'emacs-lisp-mode-hook #'muki:emacs-lisp-add-prettify-symbols)

;;; init.el ends here
