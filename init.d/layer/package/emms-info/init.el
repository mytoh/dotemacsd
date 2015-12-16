;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'emms-info
  (when (executable-find "emms-print-metadata")
    (req 'emms-info-libtag
      (setq emms-info-functions '(emms-info-libtag))))
  (when (executable-find "mediainfo")
    (req 'emms-info-mediainfo
      (cl-pushnew 'emms-info-mediainfo emms-info-functions)))
  (when (executable-find "metaflac")
    (req 'emms-info-metaflac
      (cl-pushnew 'emms-info-metaflac emms-info-functions))))

;;; init.el ends here
