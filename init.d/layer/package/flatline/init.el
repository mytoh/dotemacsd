;;; init-flatline.el -*- lexical-binding: t -*-

;; flatline
(req 'flatline

  (defface flatline-theme-muki-edge
    '((t (:foreground "gray10"
          :background "Darkorange3"
          :box nil)))
    "face for left")

  (defface flatline-theme-muki-middle
    '((t (:foreground "gray10"
          :background  "yellow4"
          :box nil)))
    "face for sub")

  (defface flatline-theme-muki-fill
    '((t (:foreground  "white"
          :background  "#112230"
          :box nil)))
    "face for left sub sub")

  (cl-defun muki:flatline:vc-mode ()
    (cl-letf ((symbol ""))
      (if (and (not (tramp-tramp-file-p buffer-file-name))
             vc-mode)
          (cl-concatenate 'string
                          symbol
                          vc-mode)
        "")))

  (cl-defun muki:flatline:coding-system ()
    (if (bound-and-true-p buffer-file-coding-system)
        (symbol-name buffer-file-coding-system)
      ""))

  (defvar muki:flatline:position 
    (glof:plist
     :face :right-sub
     :body (lambda () (cl-letf ((line-num (number-to-string (line-number-at-pos (point-max)))))
                   (cl-concatenate 'string
                                   "%c" " : "
                                   "%l" "/" line-num)))))

  (cl-defun muki:flatline:buffer-name ()
    (cl-letf ((ro (propertize "🔒" 'face
                              `(:foreground "#bfcf3f"
                                :background ,(face-background (flatline:theme-get-face :left-sub))))))
      (if buffer-read-only
          (cl-concatenate 'string
                          (propertize " " 'face (flatline:theme-get-face :left-sub))
                          ro
                          (propertize " %b " 'face (flatline:theme-get-face :left-sub)))
        (propertize (flatline:pad "%b") 'face (flatline:theme-get-face :left-sub)))))

  (cl-defun muki:flatline:major-mode ()
    (propertize
     (flatline:pad
      (cl-concatenate 'string
                      mode-name
                      (if mode-line-process
                          (format-mode-line mode-line-process)
                        "")
                      "%n"))
     'face
     (pcase major-mode
       (`emacs-lisp-mode
        (flatline:theme-get-face :right))
       (`eshell-mode
        (flatline:theme-get-face :left))
       (_ (flatline:theme-get-face :left)))))

  (cl-defun muki:flatline:flycheck ()
    (when (bound-and-true-p flycheck-mode)
      (if (bound-and-true-p flycheck-status-emoji-version)
          (format-mode-line (flycheck-status-emoji-mode-line-text))
        (format-mode-line (flycheck-mode-line-status-text)))))

  (progn 
    (flatline:set-theme 'solarized-dark)

    (setq flatline:mode-line '())
    (flatline:add 'flatline:evil-tag)
    (flatline:add 'muki:flatline:major-mode)
    (flatline:add 'muki:flatline:buffer-name)
    (flatline:add '(:body muki:flatline:vc-mode :face flatline:vc-mode))
    (flatline:add '(:body flatline:buffer-directory :face :middle))
    (flatline:add '(:body flatline:nyan-mode :face :middle))
    ;; (flatline:add '(:fill . :middle))
    (flatline:add :fill)
    (flatline:add '(:body flatline:eol-desc :face :middle))
    (flatline:add '(:body "<" :face :middle))
    (flatline:add '(:body muki:flatline:coding-system :face :middle))
    (flatline:add muki:flatline:position)
    (flatline:add '(:body muki:flatline:flycheck :face :right-sub))
    (flatline:add '(:body flatline:minor-mode :face :right))
    (flatline:update)

    (enable-mode flatline-mode))

  )

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
