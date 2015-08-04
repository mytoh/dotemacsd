;;; init-google-translate -*- lexical-binding: t; coding: utf-8; -*-

;;; COMMENT Code:

(liby 'google-translate
  (defery 'google-translate)

  (after 'google-translate

      (cl-letf ((mpv (executable-find "mpv")))
        (when mpv
          (set-option google-translate-listen-program mpv)))

    ;; default ui
    ;; (req 'google-translate-default-ui)

    ;; (setq google-translate-default-source-language "en")
    ;; (setq google-translate-default-target-language "fi")


    (req 'google-translate-smooth-ui)

    (setq google-translate-translation-directions-alist
          '(("fi" . "en") ("en" . "fi") ("fi" . "ja") ("ja" . "fi"))))

  )

;;; init-google-translate.el ends here
