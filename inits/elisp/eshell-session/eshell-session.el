;;; eshell-session.el -*- lexical-binding: t -*-


;;; switch to eshell or restore previous windows
;;; http://irreal.org/blog/?p=1742
(defvar eshell-session:buffer-list nil)

;;;; util
(cl-defun eshell-session:default-buffer-name-p (name)
  (cl-equalp eshell-buffer-name name))

(cl-defun eshell-session:mode-p (mode)
  (string-equal "eshell-mode" mode))

(cl-defun eshell-session:buffer-exists (bufname)
  (cl-find-if (lambda (buf)
                (cl-equalp (buffer-name buf) bufname))
              (buffer-list)))

;;;; command
(cl-defun eshell-session:switch ()
  "Bring up a full-screen eshell or restore previous config."
  (interactive)
  (if (eshell-session:mode-p major-mode)
      (jump-to-register :my-eshell)
    (progn
      (window-configuration-to-register :my-eshell)
      (if (not eshell-session:buffer-list)
          (setq eshell-session:buffer-list `(,eshell-buffer-name)))
      (eshell)
      (delete-other-windows))))

(cl-defun eshell-session:next ()
  "jump to next eshell buffer"
  (interactive)
  (if (eshell-session:mode-p major-mode)
      (let ((next (eshell-session:buffer-name-next (buffer-name (current-buffer)))))
        (if (eshell-session:buffer-exists next)
            (switch-to-buffer next)
          (switch-to-buffer eshell-buffer-name)))
    (message "Not eshell buffer")))

(cl-defun eshell-session:buffer-name-next (name)
  (cond
   ((not name)
    eshell-buffer-name)
   ((eshell-session:default-buffer-name-p name)
    "*eshell*<1>"    )
   (t
    (cl-letf* ((num-char (eshell-session:buffer-number name))
               (next-num-char (number-to-string (+ 1 (string-to-int num-char)))))
      (format "%s<%s>" eshell-buffer-name
              next-num-char)))))

(cl-defun eshell-session:prev ()
  (interactive)
  (if (eshell-session:mode-p major-mode)
      (cl-letf ((prev (eshell-session:buffer-name-prev (buffer-name (current-buffer)))))
        (if (eshell-session:buffer-exists prev)
            (switch-to-buffer prev)
          (switch-to-buffer eshell-buffer-name)))
    (message "not eshell buffer")))

(cl-defun eshell-session:buffer-name-prev (name)
  (cond
   ((not name)
    eshell-buffer-name)
   ((eshell-session:default-buffer-name-p name)
    (eshell-session:buffer-last))
   (t
    (cl-letf ((num-char (eshell-session:buffer-number name)))
      (if (cl-equalp num-char "1")
          eshell-buffer-name
        (cl-letf ((prev-num-char (number-to-string (- (string-to-int num-char) 1))))
          (format "%s<%s>" eshell-buffer-name prev-num-char)))))))

(cl-defun eshell-session:new ()
  (interactive)
  (cond ((not eshell-session:buffer-list)
         (eshell-session:switch))
        (t
         (cl-letf* ((next (eshell-session:buffer-name-next
                           (eshell-session:buffer-last)))
                    (num (string-to-int (eshell-session:buffer-number
                                         next))))
           (setq eshell-session:buffer-list
                 (cl-concatenate 'list
                                 eshell-session:buffer-list (list next)))
           (eshell num)))))

;;;; funcs
(cl-defun eshell-session:find-next (name)
  (cond
   ((cl-find (eshell-session:buffer-name-next name) eshell-session:buffer-list)
    (eshell-session:buffer-name-next name))
   (t
    eshell-buffer-name)))



(cl-defun eshell-session:buffer-number (name)
  (cond ((eshell-session:default-buffer-name-p name)
         0)
        (t
         (save-match-data
           (string-match "[0-9]+" name)
           (match-string  0 name)))))

(cl-defun eshell-session:buffer-last ()
  (cl-nth-value (- (length eshell-session:buffer-list) 1)
                eshell-session:buffer-list))

(cl-defun eshell-session:exit-hook ()
  (cl-letf ((buf (buffer-name (current-buffer))))
    (setq eshell-session:buffer-list
          (cl-remove buf eshell-session:buffer-list :test 'equal))))
(add-hook 'eshell-exit-hook
          'eshell-session:exit-hook)


(provide 'eshell-session)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
