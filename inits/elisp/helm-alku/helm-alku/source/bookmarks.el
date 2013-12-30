;;; bookmarks.el -*- lexical-binding: t -*-

(require 'helm)
(require 'helm-bookmark)
(require 'helm-bmkext)
(require 'helm-utils)
(require 'helm-info)
(require 'helm-files)
(require 'helm-adaptative)
(require 'bookmark)
(require 'helm-external)
(require 'helm-files)

;;;; source
;;;;; bookmark
(defvar helm-source-alku-bookmarks
  '((name . "Bookmarks")
    (init . (lambda ()
              (require 'bookmark)
              (helm-init-candidates-in-buffer
                  'global (cl-loop for b in (bookmark-all-names) collect
                                   (propertize b 'location (bookmark-location b))))))
    (candidates-in-buffer)
    (search helm-bookmark-search-fn)
    (match-part . helm-pp-bookmark-match-fn)
    (filtered-candidate-transformer
     helm-adaptive-sort
     helm-highlight-bookmark)
    (no-delay-on-input)
    (type . bookmark)
    (action-transformer
     helm-alku-action-transformer-bookmarks))
  "See (info \"(emacs)Bookmarks\").")

;;;; action
;;;;; bookmarks
(cl-defun helm-alku-action-transformer-bookmarks (actions candidate)
  (message candidate)
  (if (file-directory-p (directory-file-name (bookmark-location candidate)))
      (cons '("Open with helm" . helm-alku-action-bookmarks)
            actions)
    actions))

(defvar helm-alku-find-files-map
  (let ((map (make-sparse-keymap)))
    (set-keymap-parent map helm-map)
    (define-key map (kbd "C-]")           'helm-ff-run-toggle-basename)
    (define-key map (kbd "C-x C-f")       'helm-ff-run-locate)
    (define-key map (kbd "C-x C-d")       'helm-ff-run-browse-project)
    (define-key map (kbd "C-s")           'helm-ff-run-grep)
    (define-key map (kbd "M-g s")         'helm-ff-run-grep)
    (define-key map (kbd "M-g p")         'helm-ff-run-pdfgrep)
    (define-key map (kbd "M-g z")         'helm-ff-run-zgrep)
    (define-key map (kbd "M-.")           'helm-ff-run-etags)
    (define-key map (kbd "M-R")           'helm-ff-run-rename-file)
    (define-key map (kbd "M-C")           'helm-ff-run-copy-file)
    (define-key map (kbd "M-B")           'helm-ff-run-byte-compile-file)
    (define-key map (kbd "M-L")           'helm-ff-run-load-file)
    (define-key map (kbd "M-S")           'helm-ff-run-symlink-file)
    (define-key map (kbd "M-H")           'helm-ff-run-hardlink-file)
    (define-key map (kbd "M-D")           'helm-ff-run-delete-file)
    (define-key map (kbd "M-K")           'helm-ff-run-kill-buffer-persistent)
    (define-key map (kbd "C-c d")         'helm-ff-persistent-delete)
    (define-key map (kbd "M-e")           'helm-ff-run-switch-to-eshell)
    (define-key map (kbd "C-c i")         'helm-ff-run-complete-fn-at-point)
    (define-key map (kbd "C-c o")         'helm-ff-run-switch-other-window)
    (define-key map (kbd "C-c C-o")       'helm-ff-run-switch-other-frame)
    (define-key map (kbd "C-c C-x")       'helm-ff-run-open-file-externally)
    (define-key map (kbd "C-c X")         'helm-ff-run-open-file-with-default-tool)
    (define-key map (kbd "M-!")           'helm-ff-run-eshell-command-on-file)
    (define-key map (kbd "C-=")           'helm-ff-run-ediff-file)
    (define-key map (kbd "C-c =")         'helm-ff-run-ediff-merge-file)
    (define-key map (kbd "M-p")           'helm-ff-run-switch-to-history)
    (define-key map (kbd "C-c h")         'helm-ff-file-name-history)
    (define-key map (kbd "M-i")           'helm-ff-properties-persistent)
    (define-key map (kbd "C-c ?")         'helm-ff-help)
    (define-key map (kbd "C-}")           'helm-narrow-window)
    (define-key map (kbd "C-{")           'helm-enlarge-window)
    (define-key map (kbd "C-<backspace>") 'helm-ff-run-toggle-auto-update)
    (define-key map (kbd "C-c <DEL>")     'helm-ff-run-toggle-auto-update)
    (define-key map (kbd "C-c C-a")       'helm-ff-run-gnus-attach-files)
    (define-key map (kbd "C-c p")         'helm-ff-run-print-file)
    (define-key map (kbd "C-c /")         'helm-ff-run-find-sh-command)
    ;; Next 2 have no effect if candidate is not an image file.
    (define-key map (kbd "M-l")           'helm-ff-rotate-left-persistent)
    (define-key map (kbd "M-r")           'helm-ff-rotate-right-persistent)
    (define-key map (kbd "C-.")           'helm-find-files-down-one-level)
    (define-key map (kbd "C-l")           'helm-find-files-down-one-level)
    (define-key map (kbd "C-h C-b")       'helm-send-bug-report-from-helm)
    (define-key map (kbd "C-x @")         'helm-ff-run-find-file-as-root)
    (define-key map (kbd "C-c @")         'helm-ff-run-insert-org-link)
    (define-key map (kbd "C-m")         ''helm-execute-persistent-action)
    (when helm-ff-lynx-style-map
      (define-key map (kbd "<left>")      'helm-find-files-down-one-level)
      (define-key map (kbd "<right>")     'helm-execute-persistent-action))
    (when helm-ff-ido-style-backspace
      (define-key map (kbd "<backspace>") 'helm-ff-backspace))
    (delq nil map))
  "Keymap for `helm-alku-find-files'.")

(defun helm-alku-find-files (fname &optional preselect)
  "Find FNAME with `helm' completion.
Like `find-file' but with `helm' support.
Use it for non--interactive calls of `helm-find-files'."
  (when (get-buffer helm-action-buffer)
    (kill-buffer helm-action-buffer))
  (let* ( ;; Be sure we don't erase the precedent minibuffer if some.
         (helm-ff-auto-update-initial-value
          (and helm-ff-auto-update-initial-value
               (not (minibuffer-window-active-p (minibuffer-window)))))
         (tap (thing-at-point 'filename))
         (def (and tap (expand-file-name tap))))
    (helm-alku-face-bookmark-set)
    (helm :sources 'helm-source-find-files
          :input fname
          :case-fold-search helm-file-name-case-fold-search
          :keymap helm-alku-find-files-map
          :preselect preselect
          :default def
          :prompt "Find Files or Url: "
          :buffer "*Helm Start Find Files*")))



(cl-defun helm-alku-action-bookmarks (candidate)
  (cl-letf ((dir (bookmark-location candidate)))
    (helm-alku-find-files dir)))


;;; provide
(provide 'helm-alku-bookmarks)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
