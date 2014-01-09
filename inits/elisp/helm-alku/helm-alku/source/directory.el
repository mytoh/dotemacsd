;;; directory.el -*- lexical-binding: t -*-

(require 'helm-files)

(defcustom helm-alku-directory-list
  '(("Home" . "~"))
  "default directory list"
  :type 'list
  :group 'helm-alku)

(defvar helm-alku-directory-candidates nil)

(cl-defun helm-alku-directory-create-candidates (init-list)
  (cl-letf* ((longest (helm-alku-string-longest (cl-mapcar 'car init-list)))
             (longest-width (string-width longest)))
    (cl-mapcar
     (lambda (lst)
       (cl-letf* ((dir (file-name-as-directory (expand-file-name (cdr lst))))
                  (disp (format "%s%s"
                                (helm-alku-string-pad (car lst) longest-width)
                                dir))
                  (real dir))
         (cons disp real)))
     init-list)))

(cl-defun helm-alku-directory-init ()
  (setq helm-alku-directory-candidates
        (helm-alku-directory-create-candidates
         helm-alku-directory-list)))

(cl-defun helm-alku-directory-action-open-find-file (candidate)
  (cl-letf ((helm-ff-transformer-show-only-basename t))
    (helm-find-files-1 candidate)))

(defun helm-alku-string-longest (strs)
  (cl-reduce
   (lambda (a b)
     (cl-letf* ((al (string-width a))
                (bl (string-width b)))
       (if (< al bl)  b a)))
   strs))

(defun helm-alku-string-pad (str longest)
  (cl-letf ((len (- longest (string-width str)))
            (offset 4))
    (cl-concatenate 'string
                    str
                    (make-string (+ offset len) ? ))))

(defvar helm-source-alku-directory nil)
(setq helm-source-alku-directory
      `((name . "Directory")
        (init . helm-alku-directory-init)
        (candidates . helm-alku-directory-candidates)
        (action . (("Open with helm ff" . helm-alku-directory-action-open-find-file)))))

(provide 'helm-alku-directory)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
