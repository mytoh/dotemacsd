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

(require 'helm-alku-directory "helm-alku/source/directory")

;;;; group
(defgroup helm-alku nil
  "personal helm command"
  :group 'helm)

;;;; helm sources
(defcustom helm-alku-sources
  '(helm-source-alku-directory
    helm-source-pp-bookmarks
    helm-source-recentf)
  "helm alku sources"
  :type 'list
  :group 'helm-alku)

;;;; helm
;;;###autoload
(cl-defun helm-alku ()
  "personal helm command : [\\[helm-alku]]"
  (interactive)
  (cl-letf ((helm-ff-transformer-show-only-basename nil))
    (helm :sources helm-alku-sources
          :buffer "*helm start*"
          :prompt "Start: "
          :candidate-number-limit 20)))

;;; provide
(provide 'helm-alku)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
