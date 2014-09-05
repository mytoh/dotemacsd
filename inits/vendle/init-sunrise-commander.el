;;; init-sunrise-commander.el -*- lexical-binding: t -*-

(req 'sunrise-commander
  (req 'sunrise-x-modeline
    (enable-option sr-modeline-use-utf8-marks))
  (req 'sunrise-x-tabs)
  (req 'sunrise-x-popviewer)

  (muki:define-global-key (kbd "x") 'sunrise)
  (muki:define-global-key (kbd "X") 'sunrise-cd)
  )

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
        (start-process-shell-command prog nil
                                     (format "%s \"%s\" &" prog file))
      (message "can't find associated program!"))))

(add-hook 'sr-mode-hook
          (lambda ()
            (define-key sr-mode-map (kbd "C-<return>") 'muki:sunrise-open-external)))

(provide 'init-sunrise-commander)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
