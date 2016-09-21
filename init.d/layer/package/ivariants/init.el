;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'ivariants
  (command (ivariants-insert
            ivariants-parse-files
            ivariants-parse-dailyuse
            ivariants-parse-standardized-variants)
           "ivariants"))

;;; init.el ends here
