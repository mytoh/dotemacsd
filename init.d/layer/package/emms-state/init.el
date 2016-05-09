;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


(liby 'emms-state
  (command (emms-state-mode) "emms-state" )

  (after 'emms
      (emms-state-mode)))

;;; init.el ends here
