;;; helm-eshell-session.el -*- lexical-binding: t -*-

(require 'cl-lib)
(require 'helm)
(require 'helm-buffers)
(require 'eshell-session)

(defvar helm-source-eshell-session
  `((name . "eshell-session")
    (init . helm-eshell-session-init)
    (candidates . helm-eshell-session-candidates)
    (keymap . ,helm-buffer-map)
    (action . (("Open buffer" . helm-eshell-session-action-open-buffer)))
    ))

(defun helm-eshell-session-create-candidates ()
  eshell-session:session-list)

(defun helm-eshell-session-action-open-buffer (candidate)
  (if current-prefix-arg
      (helm-buffers-persistent-kill candidate)
    (helm-switch-to-buffer candidate)))

(defvar helm-eshell-session-candidates nil)
(cl-defun helm-eshell-session-init ()
  (setq helm-eshell-session-candidates
        (helm-eshell-session-create-candidates)))

;;;###autoload
(defun helm-eshell-session ()
  (interactive)
  (helm :sources 'helm-source-eshell-session
        :buffer "*helm eshell session*"
        :prompt "eshell: "))

(provide 'helm-eshell-session)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
