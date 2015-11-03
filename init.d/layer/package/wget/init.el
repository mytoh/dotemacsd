;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'wget
  (command (wget wget-web-page) "wget")
  (after 'wget
      (set-option wget-download-directory
       (expand-file-name "lataukset" (getenv "HUONE")))))

;;; init.el ends here
