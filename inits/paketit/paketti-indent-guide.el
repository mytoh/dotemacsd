;;; paketti-indent-guide.el -*- lexical-binding: t -*-

(require 'indent-guide)

(indent-guide-global-mode)

(set-face-foreground 'indent-guide-face "dimgray")

(setq indent-guide-char "𝄄")

(provide 'paketti-indent-guide)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
