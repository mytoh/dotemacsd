;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package helm-youtube
  :after helm
  :preface
  (progn
    (setq helm-youtube-key
          (glof:get (with-temp-buffer (insert-file-contents
                                       (expand-file-name
                                        "private/helm-youtube.el"
                                        user-emacs-directory))
                                      (read (current-buffer)))
                    :api-key)))
  :commands (helm-youtube))

;;; init.el ends here
