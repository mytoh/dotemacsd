;;; muki-layer -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(defcustom muki-layer:root
  (expand-file-name "inits/layer"
                    user-emacs-directory)
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
  (seq-each
   (lambda (n)
     (muki-layer:load category n))
   names)
  t)

(provide 'muki-layer)

;;; muki-layer.el ends here
