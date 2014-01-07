;;; helm-eshell-session.el -*- lexical-binding: t -*-

(eval-when-compile (require 'cl-lib))
(require 'helm)
(require 'helm-buffers)

(defvar helm-source-eshell-session
  `((name . "eshell-session")
    (init . helm-eshell-session-init)
    (candidates . helm-eshell-session-candidates)
    (type . buffer)
    (persistent-action . helm-buffers-list-persistent-action)
    (keymap . ,helm-buffer-map)
    (volatile)
    (mode-line . helm-buffer-mode-line-string)
    (persistent-help
     . "Show this buffer / C-u \\[helm-execute-persistent-action]: Kill this buffer")))

(defun helm-eshell-session-create-candidates ()
  (cl-letf* ((bufs (mapcar 'buffer-name (buffer-list)))
             (ebufs (cl-remove-if-not (lambda (b) (string-match "*eshell*" b))
                                      bufs)))
    ebufs))

(defvar helm-eshell-session-candidates nil)
(cl-defun helm-eshell-session-init ()
  (setq helm-eshell-session-candidates
        (helm-eshell-session-create-candidates)))

;;;###autoload
(defun helm-eshell-session ()
  (interactive)
  (helm :sources 'helm-source-eshell-session
        :buffer "*helm eshell session*"))

(provide 'helm-eshell-session)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
