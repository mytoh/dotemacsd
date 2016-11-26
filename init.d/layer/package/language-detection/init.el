;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package language-detection
  :commands (language-detection-buffer
             language-detection-string)
  :init
  (after 'shr

    (defun eww-tag-pre (dom)
      (let ((shr-folding-mode 'none)
            (shr-current-font 'default))
        (shr-ensure-newline)
        (insert (eww-fontify-pre dom))
        (shr-ensure-newline)))

    (defun eww-fontify-pre (dom)
      (with-temp-buffer
        (shr-generic dom)
        (let ((mode (eww-buffer-auto-detect-mode)))
          (when mode
            (eww-fontify-buffer mode)))
        (buffer-string)))

    (defun eww-fontify-buffer (mode)
      (delay-mode-hooks (funcall mode))
      (font-lock-default-function mode)
      (font-lock-default-fontify-region (point-min)
                                        (point-max)
                                        nil))

    (defun eww-buffer-auto-detect-mode ()
      (let* ((map '((ada ada-mode)
                    (awk awk-mode)
                    (c c-mode)
                    (cpp c++-mode)
                    (clojure clojure-mode lisp-mode)
                    (csharp csharp-mode java-mode)
                    (css css-mode)
                    (dart dart-mode)
                    (delphi delphi-mode)
                    (emacslisp emacs-lisp-mode)
                    (erlang erlang-mode)
                    (fortran fortran-mode)
                    (fsharp fsharp-mode)
                    (go go-mode)
                    (groovy groovy-mode)
                    (haskell haskell-mode)
                    (html html-mode)
                    (java java-mode)
                    (javascript javascript-mode)
                    (json json-mode javascript-mode)
                    (latex latex-mode)
                    (lisp lisp-mode)
                    (lua lua-mode)
                    (matlab matlab-mode octave-mode)
                    (objc objc-mode c-mode)
                    (perl perl-mode)
                    (php php-mode)
                    (prolog prolog-mode)
                    (python python-mode)
                    (r r-mode)
                    (ruby ruby-mode)
                    (rust rust-mode)
                    (scala scala-mode)
                    (shell shell-script-mode)
                    (smalltalk smalltalk-mode)
                    (sql sql-mode)
                    (swift swift-mode)
                    (visualbasic visual-basic-mode)
                    (xml sgml-mode)))
             (language (language-detection-string
                        (buffer-substring-no-properties (point-min) (point-max))))
             (modes (cdr (assoc language map)))
             (mode (cl-loop for mode in modes
                            when (fboundp mode)
                            return mode)))
        (message (format "%s" language))
        (when (fboundp mode)
          mode)))

    (setq shr-external-rendering-functions
          '((pre . eww-tag-pre))))
  )

;;; init.el ends here
