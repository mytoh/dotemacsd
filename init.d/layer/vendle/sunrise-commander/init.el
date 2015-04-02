;;; init-sunrise-commander.el -*- lexical-binding: t -*-

;;;; Highlighting files with inappropriate permissions.
;;;; [[http://www.emacswiki.org/emacs/Sunrise_Commander_Tips]]
;; The sr-rainbow macro allows to easily manipulate the font locking of file and directory names in
;; Sunrise using regular expressions. For instance, in order to highlight files and directories that have read/write permissions set for users other than their owner you could add to your .emacs file a snippet like the following:

(after 'sunrise-commander
    (sr-rainbow sr-gorw-dir
     (:background "misty rose"
                  :foreground "blue1"
                  :bold t)
     "^..\\(d....\\(...\\)?w..*$\\)")
  (sr-rainbow sr-gorw
              (:background "misty rose")
              "^..\\(-....\\(...\\)?w..*$\\)")

  (sr-rainbow sr-jpeg (:foreground nil)
              "\\(^[^!].[^d].*\\.\\(jpeg\\|jpg\\)$\\)")
  (set-face-attribute 'sr-jpeg nil :foreground (muki:random-hex-colour))

  (sr-rainbow sr-png (:foreground nil)
              "\\(^[^!].[^d].*\\.png$\\)")
  (set-face-attribute 'sr-png nil :foreground (muki:random-hex-colour))

  (sr-rainbow sr-pdf (:foreground nil)
              "\\(^[^!].[^d].*\\.pdf$\\)")
  (set-face-attribute 'sr-pdf nil :foreground (muki:random-hex-colour))

  (sr-rainbow sr-org (:foreground nil)
              "\\(^[^!].[^d].*\\.org$\\)")
  (set-face-attribute 'sr-org nil :foreground (muki:random-hex-colour))

  (sr-rainbow sr-torrent (:foreground nil)
              "\\(^[^!].[^d].*\\.torrent$\\)")
  (set-face-attribute 'sr-torrent nil :foreground (muki:random-hex-colour))

  (sr-rainbow sr-aria2 (:foreground nil)
              "\\(^[^!].[^d].*\\.aria2$\\)")
  (set-face-attribute 'sr-aria2 nil :foreground (muki:random-hex-colour))

  )

(cl-defun muki:random-hex-colour ()
  (cl-letf* ((cvalues '(1 2 3 4 5 6 7 8 9 a b c d e f))
             (len (length cvalues))
             (lst (make-list 6 0))
             (nums (seq-map (clambda (_) (cl-nth-value (cl-random len) cvalues))
                            lst)))
    (concat "#"
            (mapconcat
             (clambda (x)
                 (cond ((numberp x)
                        (number-to-string x))
                       ((symbolp x)
                        (symbol-name x))))
             nums ""))))

(liby 'sunrise-commander
  (after 'sunrise-commander
      (req 'sunrise-x-modeline
        (enable-option sr-modeline-use-utf8-marks))
    (req 'sunrise-x-tabs
      (add-key sr-tabs-mode-map "C-n"  #'dired-next-line)
      (add-key sr-tabs-mode-map "C-p"  #'dired-previous-line)
      (add-key sr-tabs-mode-map "M-n" #'sr-tabs-next)
      (add-key sr-tabs-mode-map "M-p" #'sr-tabs-prev))
    (req 'sunrise-x-popviewer))

  (command (sunrise) "sunrise-commander")

  (cl-defun muki:sunrise ()
    (interactive)
    (sunrise)
    (sr-popviewer-mode 1))

  (muki:define-launcher-key "x" #'muki:sunrise)
  (muki:define-launcher-key "X" #'sunrise-cd)

  (defvar muki:sunrise-external-programs-associations
    '(("cbz" . "mcomix")
      ("cbr" . "mcomix")
      ("zip" . "mcomix")
      ("rar" . "mcomix")
      ("pdf" . "mcomix")
      ("jpg" . "pikkukivi kuva")
      ("JPG" . "pikkukivi kuva")
      ("png" . "pikkukivi kuva")
      ("gif" . "pikkukivi kuva")
      ("mov" . "mpv")
      ("webm" . "mpv")
      ("swf" . "mpv")
      ("flv" . "mpv")
      ("avi" . "mpv")
      ("mkv" . "mpv")
      ("mp4" . "mpv")
      ("wmv" . "mpv")
      ("webm" . "mpv")))

  (cl-defun muki:sunrise-open-external ()
    "Open file at point in an external application."
    (interactive)
    (cl-letf* ((file (dired-get-filename))
               (ext (file-name-extension file))
               (prog (assoc-default ext muki:sunrise-external-programs-associations)))
      (if prog
          (progn
            (message "staring external program %s..." prog)
            (start-process-shell-command prog nil
                                         (format "%s \"%s\" &" prog file)))
        (message "can't find associated program!"))))

  (after 'sunrise-commander
      (add-key sr-mode-map "C-c C-x" #'muki:sunrise-open-external)
    (add-key sr-mode-map "C-n" #'dired-next-line)
    (add-key sr-mode-map "C-p" #'dired-previous-line))

  )

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
