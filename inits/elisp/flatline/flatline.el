;;; flatline.el --- flat modeline

;;; Code:

;;; http://amitp.blogspot.jp/2011/08/emacs-custom-mode-line.html

(defgroup flatline nil
  "Faces used in the mode line."
  :group 'mode-line)

(defun flatline:front-space ()
  `(:eval (if (display-graphic-p) " " "-")))

(defun flatline:column ()
  `(:eval (propertize "%02c" 'face
                      (if (>= (current-column) 80)
                          'flatline:80col-face
                        'flatline:column-face))))

(defun flatline:line ()
  `(:eval (propertize "%02l" 'face 'flatline:line-face)))

(defun flatline:modified ()
  `(:eval
    (cond (buffer-read-only
           (propertize " RO " 'face 'flatline:read-only-face))
          ((buffer-modified-p)
           (propertize " ** " 'face 'flatline:modified-face))
          (t (propertize " -- " 'face 'flatline:modified-face)))))

(defun flatline:mule-info ()
  `((current-input-method
     (:propertize ("" current-input-method-title)))
    (:eval (flatline:eol-desc))))

(defun flatline:mnemonic ()
  `(:eval
    (propertize (format-mode-line "%z") 'face 'flatline:mnemonic-face)))

(setq eol-mnemonic-undecided ":")
(setq eol-mnemonic-unix "unix")
(setq eol-mnemonic-dos "dos")
(setq eol-mnemonic-mac "mac")

(defun flatline:eol-desc ()
  (lexical-let* ((eol (coding-system-eol-type buffer-file-coding-system))
                 (mnemonic (coding-system-eol-type-mnemonic buffer-file-coding-system))
                 (desc (assoc eol mode-line-eol-desc-cache)))
    (if (and desc (eq (cadr desc) mnemonic))
        (cddr desc)
      (if desc (setq mode-line-eol-desc-cache nil)) ;Flush the cache if stale.
      (setq desc
            (propertize
             mnemonic
             'face 'flatline:eol-desc-face))
      (push (cons eol (cons mnemonic desc)) mode-line-eol-desc-cache)
      desc)))

(defun flatline:client ()
  `(:eval
    (propertize (if (frame-parameter nil 'client) "@" "/")
                'face 'flatline:client-face)))

(defun flatline:buffer ()
  `(:eval
    (propertize "%b"
                'face 'flatline:buffer-face)))

(defun flatline:major-mode ()
  `(:eval
    (propertize mode-name 'face 'flatline:major-mode-face)
    (propertize mode-line-process 'face 'flatline:major-mode-face)
    (propertize "%n" 'face 'flatline:major-mode-face)))

(defun flatline:minor-mode ()
  `(:eval
    (propertize (format-mode-line minor-mode-alist) 'face 'flatline:minor-mode-face)))

(defun flatline:warning ()
  `(:eval (propertize "%e" 'face 'flatline:warning-face)))

(defun flatline:misc-info ()
  `(:propertize
    ( " "  global-mode-string " ")
    face flatline:misc-info-face))

(defun flatline:nyan-mode ()
  `(:eval (when nyan-mode (list (nyan-create)))))

(defun flatline:space (space)
  `(:eval (propertize ,space 'face 'flatline:space-face)))

(defun flatline:shorten-path (path)
  (lexical-let ((npath (remove-if '(lambda (s) (string= s ""))
                                  (split-string (abbreviate-file-name path "/")))))
    (cond
     ((< 4 (length npath))
      (concat "/" (car npath)
              "/" (cadr npath)
              "/" "..."
              "/" (car (cddr npath))
              "/" (cadddr npath)))
     (t path))))

(defun flatline:buffer-directory ()
  `(:eval (propertize (flatline:shorten-path default-directory) 'face 'flatline:buffer-directory-face)))

(defcustom flatline:mode-line-format nil
  "flatline mode-line string list"
  :type 'symbol)
;; initialize mode-line
(defun flatline:mode-line-format ()
  (list
   (flatline:space "  ")
   ;; buffer
   (flatline:buffer)
   (flatline:space " ")

   ;; directory
   (flatline:buffer-directory)
   (flatline:space "  ")
   ;; eol
   (flatline:eol-desc)
   (flatline:space "  ")
   ;; modified
   (flatline:modified)
   ;; column
   '(:eval (propertize "(" 'face 'flatline:normal-face))
   (flatline:column)
   '(:eval (propertize "," 'face 'flatline:normal-face))
   (flatline:line)
   '(:eval (propertize ")" 'face 'flatline:normal-face))
   (flatline:space "  ")
   ;; major mode
   (flatline:major-mode)
   (flatline:space "  ")
   ;; minor mode
   (flatline:minor-mode)
   (flatline:space "  ")
   ;; misc inf
   (flatline:misc-info)
   (flatline:space "  ")
   ;; nyan
   (flatline:nyan-mode)))
(setq-default mode-line-format
              (flatline:mode-line-format))


;; faces

(defgroup flatline-face nil
  "Faces used in the mode line."
  :group 'flatline)


(defface flatline:normal-face
  '((t (:background "gray20" :foreground "gray60" :inverse-video nil :box nil)))
  "flatline base face"
  :group 'flatline-face)

(set-face-attribute 'mode-line nil :foreground "gray60" :background "gray20" :inverse-video nil :box nil)

;; inactive face
(defface flatline:inactive-face
  '((t (:foreground "white" :background "black")))
  "flatline inactive face"
  :group 'flatline-face)
(set-face-attribute 'mode-line-inactive nil
                    :inherit 'flatline:inactive-face)

;; warning
(defface flatline:warning-face
  '((t (:background "gray20" :foreground "red")))
  "flatline warning face"
  :group 'flatline-face)

;; modified
(defface flatline:modified-face
  '((t ( :background "gray20" :foreground "#c82829")))
  "flatline modified face"
  :group 'flatline-face)
(defface flatline:read-only-face
  '((t ( :background "gray20" :foreground "#4271ae" :box '(:line-width 2 :color "#4271ae"))))
  "flatline read only face"
  :group 'flatline-face)

;; column
(defface flatline:column-face
  '((t (:inherit 'flatline:normal-face)))
  "flatline column face"
  :group 'flatline-face)
(defface flatline:80col-face
  '((t ( :background "gray20" :foreground "red")))
  "flatline 80col face"
  :group 'flatline-face)

;; line
(defface flatline:line-face
  '((t (:foreground "gray60" :background "gray20")))
  "flatline line face"
  :group 'flatline-face)

;; mule info
(defface flatline:mnemonic-face
  '((t (:foreground "gray60" :background "gray20")))
  "flatline mnemonic face"
  :group 'flatline-face)

;; eol desc
(defface flatline:eol-desc-face
  '((t (  :background "gray20" :foreground "#93ef5a")))
  "flatline eol description face"
  :group 'flatline-face)

;; client
(defface flatline:client-face
  '((t (:inherit 'flatline:normal-face)))
  "flatline client face"
  :group 'flatline-face)

;; buffer name
(defface flatline:buffer-face
  '((t ( :background "black" :foreground "#a7bc7a")))
  "flatline buffer face"
  :group 'flatline-face)

;; buffer directory
(defface flatline:buffer-directory-face
  '((t (:foreground "#55cb92" :background "gray20")))
  "flatline buffer directory face"
  :group 'flatline-face)

;; mode name
(defface flatline:major-mode-face
  '((t (  :background "gray20" :foreground "#bb3bbb")))
  "flatline mode name face"
  :group 'flatline-face)

;; minor mode
(defface flatline:minor-mode-face
  '((t (  :background "gray20" :foreground "#6b719e")))
  "flatline minor made face"
  :group 'flatline-face)

;; misc info
(defface flatline:misc-info-face
  '((t ( :background "gray20" :foreground "#c55f3e")))
  "flatline misc info face"
  :group 'flatline-face)

;; space
(defface flatline:space-face
  '((t (:foreground "gray60" :background "gray20")))
  "flatline space face"
  :group 'flatline-face)

(provide 'flatline)

;;; flatline.el ends here
