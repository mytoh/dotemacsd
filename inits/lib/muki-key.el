;;; muki-key -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:
;; (defvar global-keys-minor-mode-map (make-sparse-keymap)
;;   "global-keys-minor-mode keymap.")

;; (define-key global-keys-minor-mode-map "\C-c\C-r" #'revert-buffer)
;; (define-key global-keys-minor-mode-map (kbd "C-;") #'insert-date)

;; Now define a minor mode that will use that keymap. You'll use that minor mode for basically everything.

;; (define-minor-mode global-keys-minor-mode
;;   "A minor mode so that global key settings override annoying major modes."
;;   t "global-keys" 'global-keys-minor-mode-map)

;; (global-keys-minor-mode 1)

;;; my global map
(defcustom muki:launcher-prefix-key
  "C-c e"
  "personal launcher prefix key")

(define-prefix-command 'muki:launcher-map)
(global-set-key (kbd muki:launcher-prefix-key) 'muki:launcher-map)

(cl-defun muki:define-launcher-key (key def)
  "define personal global key mappings"
  (cl-letf ((k (kbd key)))
    (add-key muki:launcher-map k def)
    (message "bind %s to %s" k (symbol-name def))))

;; (define-minor-mode muki-keys-mode
;;     "muki keymapping"
;;   :keymap muki:launcher-map
;;   :lighter " ☕"
;;   ;; :global t
;;   :init-value t)

;; (muki-keys-mode 1)

;;; keymap utils

(cl-defmacro add-global-key (&rest bindings)
  (declare (debug t))
  `(add-key global-map ,@bindings))


(cl-defmacro add-key (keymap &rest body)
  (declare (debug t)
           (indent 1))
  (and body
       (cl-letf ((key (car body))
                 (def (cadr body)))
         `(cl-locally
              (cl-etypecase ,key
                (string (define-key ,keymap (kbd ,key) ,def))
                (t (define-key ,keymap ,key ,def)))
            (add-key ,keymap ,@(cddr body))))))

(provide 'muki-key)

;;; muki-key.el ends here
