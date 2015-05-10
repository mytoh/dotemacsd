;;; muki-layer -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(require 'muki)

(defcustom muki-layer:root
  (locate-user-emacs-file "init.d/layer")
  "layer root directory")

(cl-defun muki-layer:load (category name)
  (cl-letf* ((cat (symbol-name category))
             (name (symbol-name name))
             (path (expand-file-name
                    (concat cat "/" name)
                    muki-layer:root)))
    (load (expand-file-name
           "init.el"
           path))))

(cl-defun muki-layer:load-layers (category names)
  (declare (indent 1))
  (setq debug-on-error t)
  (seq-each
   (clambda (n)
       (muki-layer:load category n))
   names)
  (setq debug-on-error nil)
  t)

(provide 'muki-layer)

;;; muki-layer.el ends here
