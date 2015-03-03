;;; init-el-get.el -*- lexical-binding: t -*-

(add-to-list 'load-path (muki:user-emacs-directory "el-get/el-get"))

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(pak 'el-get
  (add-to-list 'el-get-recipe-path (muki:user-emacs-directory "el-get-user/recipes"))
  (el-get 'sync))

(provide 'init-el-get)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
