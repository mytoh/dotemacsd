;;; init-sunrise-commander.el -*- lexical-binding: t -*-

;;;; Highlighting files with inappropriate permissions.
;;;; [[http://www.emacswiki.org/emacs/Sunrise_Commander_Tips]]
;; The sr-rainbow macro allows to easily manipulate the font locking of file and directory names in Sunrise using regular expressions. For instance, in order to highlight files and directories that have read/write permissions set for users other than their owner you could add to your .emacs file a snippet like the following:

(with-eval-after-load 'sunrise-commander
  (sr-rainbow sr-gorw-dir-face
              (:background "misty rose"
                           :foreground "blue1"
                           :bold t)
              "^..\\(d....\\(...\\)?w..*$\\)")

  (sr-rainbow sr-gorw-face
              (:background "misty rose")
              "^..\\(-....\\(...\\)?w..*$\\)"))

(req 'sunrise-commander
  (req 'sunrise-x-modeline
    (enable-option sr-modeline-use-utf8-marks))
  (req 'sunrise-x-tabs)
  (req 'sunrise-x-popviewer)

  (cl-defun muki:sunrise ()
    (interactive)
    (sunrise)
    (sr-popviewer-mode 1))

  (muki:define-global-key "x" 'muki:sunrise)
  (muki:define-global-key "X" 'sunrise-cd)

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

  ;; (add-hook 'sr-mode-hook
  ;;           (lambda ()
  ;;             (define-key sr-mode-map (kbd "C-c o") 'muki:sunrise-open-external)))

  (define-key sr-mode-map (kbd "C-c o") 'muki:sunrise-open-external)

  )


(provide 'init-sunrise-commander)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
