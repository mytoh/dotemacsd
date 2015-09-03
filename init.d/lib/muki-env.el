;;; muki-env -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:expand-path-huone (name)
  (expand-file-name
   name
   (if-let ((huone (getenv "HUONE")))
       huone
     (expand-file-name "~/huone"))))

(provide 'muki-env)
;;; muki-env.el ends here
