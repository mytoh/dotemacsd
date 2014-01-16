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
           (helm-alku-command-format com (executable-find com) longest-width)
         (helm-alku-command-format (car com) (expand-file-name (cdr com))  longest-width)))
     init-list)))

(cl-defun helm-alku-command-format (command path width)
  (cons (format "%s%s" (helm-alku-string-pad command width)
                path)
        path))

(cl-defun helm-alku-command-action-run (candidate)
  (cl-letf ((com (format "%s &" candidate)))
    (message "starting %s..." candidate)
    (start-process-shell-command com nil com)
    (message "started %s" candidate)))

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
