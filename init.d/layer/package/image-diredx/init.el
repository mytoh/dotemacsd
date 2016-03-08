;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


(after 'image-dired
    (require 'image-dired+)
  (after 'image-dired+
      (enable-mode image-diredx-async-mode)
    (enable-mode image-diredx-adjust-mode)))


;;; init.el ends here
