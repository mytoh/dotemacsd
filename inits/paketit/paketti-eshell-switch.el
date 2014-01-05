;;; paketti-eshell-switch.el -*- lexical-binding: t -*-


;;; switch to eshell or restore previous windows
;;; http://irreal.org/blog/?p=1742
(defvar my-eshell-buffers nil)

;;;; command
(cl-defun mytoh:eshell-invoke-or-switch ()
  "Bring up a full-screen eshell or restore previous config."
  (interactive)
  (if (string= "eshell-mode" major-mode)
      (jump-to-register :my-eshell)
    (progn
      (window-configuration-to-register :my-eshell)
      (if (not my-eshell-buffers)
          (setq my-eshell-buffers `(,eshell-buffer-name)))
      (eshell)
      (delete-other-windows))))

(cl-defun mytoh:eshell-next ()
  "jump to next eshell buffer"
  (interactive)
  (if (string= "eshell-mode" major-mode)
      (let ((next (mytoh:eshell-buffer-name-next (buffer-name (current-buffer)))))
        (if (cl-find-if #'(lambda (buf)
                            (string= (buffer-name buf) next))
                        (buffer-list))
            (switch-to-buffer next)
          (switch-to-buffer eshell-buffer-name)))
    (message "Not eshell buffer")))

(cl-defun mytoh:eshell-new ()
  (interactive)
  (cond ((not my-eshell-buffers)
         (mytoh:eshell-invoke-or-switch))
        (t
         (cl-letf* ((next (mytoh:eshell-buffer-name-next
                           (mytoh:eshell-buffer-last)))
                    (num (string-to-int (mytoh:eshell-buffer-number
                                         next))))
           (setq my-eshell-buffers
                 (cl-concatenate 'list
                                 my-eshell-buffers (list next)))
           (eshell num)))))

;;;; funcs
(cl-defun mytoh:eshell-find-next (name)
  (cond
   ((cl-find (mytoh:eshell-buffer-name-next name) my-eshell-buffers)
    (mytoh:eshell-buffer-name-next name))
   (t
    eshell-buffer-name)))

(cl-defun mytoh:eshell-buffer-name-next (name)
  (cond
   ((not name)
    eshell-buffer-name)
   ((string= eshell-buffer-name name)
    "*eshell*<1>")
   (t
    (cl-letf* ((num-char (mytoh:eshell-buffer-number name))
               (next-num-char (number-to-string (+ 1 (string-to-int num-char)))))
      (format "%s<%s>" eshell-buffer-name
              next-num-char)))))

(cl-defun mytoh:eshell-buffer-number (name)
  (cond ((string= eshell-buffer-name name)
         nil)
        (t
         (substring name
                    (+ 1 (length eshell-buffer-name)) 10))))

(cl-defun mytoh:eshell-buffer-last ()
  (cl-nth-value (- (length my-eshell-buffers) 1)
                my-eshell-buffers))


(cl-defun mytoh:eshell-exit-hook ()
  (cl-letf ((buf (buffer-name (current-buffer))))
    (setq my-eshell-buffers
          (cl-remove buf my-eshell-buffers :test #'equal))))
(add-hook 'eshell-exit-hook
          #'mytoh:eshell-exit-hook)


(provide 'paketti-eshell-switch)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
