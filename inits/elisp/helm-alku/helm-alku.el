;;; helm-alku.el -*- lexical-binding: t -*-

(eval-when-compile (require 'cl-lib))
(require 'helm)
(require 'helm-bookmark)
(require 'helm-bmkext)
(require 'helm-utils)
(require 'helm-info)
(require 'helm-files)
(require 'helm-adaptative)
(require 'bookmark)

(require 'helm-alku-bookmarks "helm-alku/source/bookmarks")

;;;; helm sources
(defvar helm-alku-sources
  '(helm-source-alku-bookmarks
    helm-source-recentf))

;;;; helm
;;;###autoload
(cl-defun helm-alku ()
  "personal helm command : [\\[helm-alku]]"
  (interactive)
  (cl-letf ((helm-ff-transformer-show-only-basename nil))
    (helm :sources helm-alku-sources
          :buffer "*helm start*"
          :prompt "Start: "
          :candidate-number-limit 10)))

;;; provide
(provide 'helm-alku)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
