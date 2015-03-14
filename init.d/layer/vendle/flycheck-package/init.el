;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; flycheck
(liby 'flycheck-package
  (auto (flycheck-package-setup) "flycheck-package")
   (after 'flycheck
        (flycheck-package-setup)))

;;; init.el ends here
