;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; golden-ratio
(req 'golden-ratio
  (enable-mode golden-ratio-mode)
  (cl-pushnew 'eshell-mode golden-ratio-exclude-modes)
  (cl-pushnew 'magit-status-mode golden-ratio-exclude-modes)
  (cl-pushnew 'magit-log-mode golden-ratio-exclude-modes)
  (cl-pushnew 'magit-mode golden-ratio-exclude-modes))

;;; init.el ends here
