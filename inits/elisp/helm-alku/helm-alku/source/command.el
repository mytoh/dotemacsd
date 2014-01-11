;;; command.el -*- lexical-binding: t -*-

(require 'helm-external)
(require 'helm-alku-util "helm-alku/util")

(defcustom helm-alku-command-list
  '("firefox")
  "default command list of
\"command-name\" or (\"command-name\" . \"full-path\")"
  :type 'list
  :group 'helm-alku)

(cl-defun helm-alku-command-create-candidates (init-list)
  (cl-letf* ((longest (helm-alku-string-longest
                       (cl-mapcar (lambda (l) (if (listp l) (car l) l)) init-list)))
             (longest-width (string-width longest)))
    (cl-mapcar
     (lambda (com)
       (if (stringp com)
           (cl-letf ((full-path (executable-find com)))
             (cons (format "%s%s" (helm-alku-string-pad com longest-width)
                           full-path)
                   full-path))
         (cl-letf ((full-path (expand-file-name (cdr com))))
           (cons (format "%s%s" (helm-alku-string-pad (car com) longest-width)
                         full-path)
                 full-path))))
     init-list)))

(cl-defun helm-alku-command-action-run (candidate)
  (cl-letf ((com candidate))
    (start-process-shell-command com nil com)))

(cl-defun helm-alku-command-init ()
  (setq helm-alku-command-candidates
        (helm-alku-command-create-candidates
         helm-alku-command-list)))

(defvar helm-source-alku-command nil)
(setq helm-source-alku-command
      `((name . "Command")
        (init . helm-alku-command-init)
        (candidates . helm-alku-command-candidates)
        (action . (("Run" . helm-alku-command-action-run)))))

(provide 'helm-alku-command)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
