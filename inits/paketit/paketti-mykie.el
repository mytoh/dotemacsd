;;; paketti-mykie.el -*- lexical-binding: t -*-

(req 'mykie
     (setq mykie:use-major-mode-key-override t)
     (mykie:initialize)

     (mykie:define-key-with-self-key "a"
       :region 'align
       :region&C-u 'align-regexp)

     (mykie:define-key-with-self-key "i"
       :region 'indent-region)

     (mykie:define-key-with-self-key "s"
       :region 'sort-lines))

(provide 'paketti-mykie)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
