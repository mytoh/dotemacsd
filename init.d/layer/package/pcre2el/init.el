;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package pcre2el
  :commands (;; C-c / /
             rxt-explain
             ;; C-c / c
             rxt-convert-syntax
             ;; C-c / x
             rxt-convert-to-rx
             ;; C-c / ′
             rxt-convert-to-strings 

             ;; C-c / p e
             rxt-pcre-to-elisp
             ;; C-c / %
             pcre-query-replace-regexp
             ;; C-c / p x
             rxt-pcre-to-rx
             ;; C-c / p s
             rxt-pcre-to-sre
             ;; C-c / p ′
             rxt-pcre-to-strings
             ;; C-c / p /
             rxt-explain-pcre

             ;; Commands that work on an Emacs regexp:

             ;; C-c / e /
             rxt-explain-elisp
             ;; C-c / e p
             rxt-elisp-to-pcre
             ;; C-c / e x
             rxt-elisp-to-rx
             ;; C-c / e s
             rxt-elisp-to-sre
             ;; C-c / e ′
             rxt-elisp-to-strings
             ;; C-c / e t
             rxt-toggle-elisp-rx
             ;; C-c / t
             rxt-toggle-elisp-rx
             ))

;;; init.el ends here
