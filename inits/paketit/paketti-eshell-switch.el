;;; paketti-eshell-switch.el -*- lexical-binding: t -*-


;;; switch to eshell or restore previous windows
;;; http://irreal.org/blog/?p=1742
(defvar my-eshell-buffers nil)

;;;; util
(cl-defun mytoh:eshell-default-buffer-p (name)
  (cl-equalp eshell-buffer-name name))

(cl-defun mytoh:eshell-mode-p (mode)
  (string-equal "eshell-mode" mode))

(cl-defun mytoh:eshell-buffer-exists (bufname)
  (cl-find-if (lambda (buf)
                (cl-equalp (buffer-name buf) bufname))
              (buffer-list)))

;;;; command
(cl-defun mytoh:eshell-switch ()
  "Bring up a full-screen eshell or restore previous config."
  (interactive)
  (if (mytoh:eshell-mode-p major-mode)
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
  (if (mytoh:eshell-mode-p major-mode)
      (let ((next (mytoh:eshell-buffer-name-next (buffer-name (current-buffer)))))
        (if (mytoh:eshell-buffer-exists next)
            (switch-to-buffer next)
          (switch-to-buffer eshell-buffer-name)))
    (message "Not eshell buffer")))

(cl-defun mytoh:eshell-buffer-name-next (name)
  (cond
   ((not name)
    eshell-buffer-name)
   ((mytoh:eshell-default-buffer-p name)
    "*eshell*<1>"    )
   (t
    (cl-letf* ((num-char (mytoh:eshell-buffer-number name))
               (next-num-char (number-to-string (+ 1 (string-to-int num-char)))))
      (format "%s<%s>" eshell-buffer-name
              next-num-char)))))

(cl-defun mytoh:eshell-prev ()
  (interactive)
  (if (mytoh:eshell-mode-p major-mode)
      (cl-letf ((prev (mytoh:eshell-buffer-name-prev (buffer-name (current-buffer)))))
        (if (mytoh:eshell-buffer-exists prev)
            (switch-to-buffer prev)
          (switch-to-buffer eshell-buffer-name)))
    (message "not eshell buffer")))

(cl-defun mytoh:eshell-buffer-name-prev (name)
  (cond
   ((not name)
    eshell-buffer-name)
   ((mytoh:eshell-default-buffer-p name)
    (mytoh:eshell-buffer-last))
   (t
    (cl-letf ((num-char (mytoh:eshell-buffer-number name)))
      (if (cl-equalp num-char "1")
          eshell-buffer-name
        (cl-letf ((prev-num-char (number-to-string (- (string-to-int num-char) 1))))
          (format "%s<%s>" eshell-buffer-name prev-num-char)))))))

(cl-defun mytoh:eshell-new ()
  (interactive)
  (cond ((not my-eshell-buffers)
         (mytoh:eshell-switch))
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



(cl-defun mytoh:eshell-buffer-number (name)
  (cond ((mytoh:eshell-default-buffer-p name)
         0)
        (t
         (substring name
                    (+ 1 (length eshell-buffer-name)) 10))))

(cl-defun mytoh:eshell-buffer-last ()
  (cl-nth-value (- (length my-eshell-buffers) 1)
                my-eshell-buffers))

(cl-defun mytoh:eshell-exit-hook ()
  (cl-letf ((buf (buffer-name (current-buffer))))
    (setq my-eshell-buffers
          (cl-remove buf my-eshell-buffers :test 'equal))))
(add-hook 'eshell-exit-hook
          'mytoh:eshell-exit-hook)


(provide 'paketti-eshell-switch)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
