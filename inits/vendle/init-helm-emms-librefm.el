;;; init-helm-emms-librefm -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun helm-librefm-stream ()
  (interactive)
  (helm :sources '(helm-source-librefm-stream)
        :buffer "*helm librefm stream *"
        :prompt "Tag: "))

(defvar helm-source-librefm-stream
  `((name . "Librefm")
    (init . helm-librefm-stream-init)
    (candidates . helm-librefm-stream-candidates)
    (action . (("Open Stream" . helm-librefm-stream-action-open)))))

(cl-defun helm-librefm-stream-action-open (candidate)
  (emms-librefm-stream candidate))

(cl-defun helm-librefm-stream-init ()
  (setq helm-librefm-stream-candidates
        (helm-librefm-stream-create-candidates)))

(cl-defun helm-librefm-stream-create-candidates ()
  (cons
   '("Community loved" . "librefm://community/loved")
   (helm-librefm-stream-station-tag
    helm-librefm-stream-global-tags)))

(cl-defun helm-librefm-stream-station-tag (tags)
  (cl-mapcar
   (lambda (tag)
     (cons
      tag
      (cl-concatenate 'string
                      "librefm://globaltags/"
                      tag)))
   tags))

(defvar helm-librefm-stream-global-tags
  '( "Folk"
    "Rock"
    "Metal"
    "Classical"
    "Pop"
    "Blues"
    "Jazz"
    "Punk"
    "Ambient"
    "Electronic"))

(muki:define-emms-key "l" 'helm-librefm-stream)

(provide 'init-helm-emms-librefm)

;;; init-helm-emms-librefm.el ends here
