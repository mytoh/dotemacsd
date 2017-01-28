;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package ivy-youtube
  :commands (ivy-youtube)
  :init
  (progn
    (setq ivy-youtube-key
          (glof:get (with-temp-buffer (insert-file-contents
                                       (expand-file-name
                                        "private/helm-youtube.el"
                                        user-emacs-directory))
                                      (read (current-buffer)))
                    :api-key))))

;;; init.el ends here
