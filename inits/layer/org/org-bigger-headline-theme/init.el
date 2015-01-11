;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(defvar muki:org-bigger-headline-theme:resize-list
  '(2.2 2.0 1.8 1.6 1.4 1.2 1.1 1.0 1.0))

(cl-defun muki:org-set-face ()
          ;; bigger font for org headlines
          ;; taken from monokai
          ;; [[github.com/oneKelvinSmith/monokai-emacs/]]
          (cl-labels ((if-unspecified (default-face fall-back)
                                      (pcase (face-attribute default-face :foreground)
                                             (`unspecified (face-attribute fall-back :foreground))
                                             (_ (face-attribute default-face :foreground))))
                      (modify-face-with-height (face level fall-back)
                                               (set-face-attribute face nil
                                                                   :inherit 'variable-pitch
                                                                   :height (seq-elt muki:org-bigger-headline-theme:resize-list
                                                                                    (- level 1))
                                                                   :foreground (if-unspecified face fall-back)))
                      (modify-face (face fall-back)
                                   (set-face-attribute face nil
                                                       :inherit 'variable-pitch
                                                       :foreground (if-unspecified face fall-back))))
                     (modify-face-with-height 'org-level-1 1 'font-lock-function-name-face)
                     (modify-face-with-height 'org-level-2 2 'font-lock-variable-name-face)
                     (modify-face-with-height 'org-level-3 3 'font-lock-keyword-face)
                     (modify-face-with-height 'org-level-4 4 'font-lock-comment-face)
                     (modify-face-with-height 'org-level-5 5 'font-lock-type-face)
                     (modify-face-with-height 'org-level-6 6 'font-lock-constant-face)
                     (modify-face-with-height 'org-level-7 7 'font-lock-builtin-face)
                     (modify-face-with-height 'org-level-8 8 'font-lock-string-face)
                     (set-face-attribute 'org-done nil
                                         :inherit 'variable-pitch
                                         :weight 'bold)
                     (set-face-attribute 'org-todo nil
                                         :inherit 'variable-pitch
                                         :weight 'bold)
                     (set-face-attribute 'org-block-begin-line nil
                                         :height 0.8)
                     (set-face-attribute 'org-block-end-line nil
                                         :height 0.8)))

(after 'org
       (muki:org-set-face))

;;; init.el ends here
