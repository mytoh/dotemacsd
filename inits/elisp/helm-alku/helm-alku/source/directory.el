;;; directory.el -*- lexical-binding: t -*-

(require 'helm-files)

(defcustom helm-alku-directory-list
  '(("Home" . "~"))
  "default directory list"
  :type 'list
  :group 'helm-alku)

(defvar helm-alku-directory-candidates nil)

(cl-defun helm-alku-directory-create-candidates (init-list)
  (cl-mapcar
   #'(lambda (lst)
       (cl-letf* ((dir (file-name-as-directory (expand-file-name (cdr lst))))
                  (disp (format "%s\t%s" (car lst) dir))
                  (real dir))
         (cons disp real)))
   init-list))

(cl-defun helm-alku-directory-init ()
  (setq helm-alku-directory-candidates
        (helm-alku-directory-create-candidates
         helm-alku-directory-list)))

(cl-defun helm-alku-directory-action-open-find-file (candidate)
  (helm-find-files-1 candidate))

(defvar helm-source-alku-directory nil)
(setq helm-source-alku-directory
      `((name . "Directory")
        (init . helm-alku-directory-init)
        (candidates . helm-alku-directory-candidates)
        (action . (("Open with helm ff" . helm-alku-directory-action-open-find-file)
                   ))))

(provide 'helm-alku-directory)

;; (defvar helm-source-ypv-bookmarks
;;   `((name . ,(helm-ypv-bookmark-add-source-mark "Bookmarks"))
;;     (init . helm-ypv-bookmark-init)
;;     (candidates . helm-ypv-candidate-bookmarks)
;;     (action . (("Open channel" . helm-ypv-bookmark-action-open-channel)
;;                ("Remove bookmark" . helm-ypv-bookmark-action-remove)))))


;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
