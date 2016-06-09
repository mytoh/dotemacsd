;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'colle)

(liby 'theme-looper
  (defery 'theme-looper)
  (after 'theme-looper
      (cl-defun muki:theme-looper-filter-available-themes (themes)
        (cl-letf ((availables
                   (custom-available-themes)))         
          (colle:filter
           (lambda (theme)
             (colle:find (lambda (tm) (eq tm theme))
                      availables))
           themes)))
    (theme-looper-set-theme-set
     (muki:theme-looper-filter-available-themes
      muki:favorite-themes))))

;;; init.el ends here
