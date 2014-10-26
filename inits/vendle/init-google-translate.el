;;; init-google-translate -*- lexical-binding: t; coding: utf-8; -*-

;;; COMMENT Code:

(req 'google-translate

  (auto (google-translate-default-ui)
        "google-translate-default-ui")

  (cl-letf ((mpv (executable-find "mpv")))
    (when mpv
      (set-option google-translate-listen-program mpv)))

  ;; default ui
  ;; (req 'google-translate-default-ui)

  ;; (setq google-translate-default-source-language "en")
  ;; (setq google-translate-default-target-language "fi")

  (auto (google-translate-smooth-ui) "google-translate")
  (auto (google-translate-smooth-ui) "google-translate-smooth-ui")

  (setq google-translate-translation-directions-alist
        '(("fi" . "en") ("en" . "fi") ("fi" . "ja") ("ja" . "fi")))
  )

(provide 'init-google-translate)

;;; init-google-translate.el ends here
