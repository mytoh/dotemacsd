;;; init-navi2ch.el -*- lexical-binding: t -*-

;; navi2ch
(liby 'navi2ch
  (auto (navi2ch) "navi2ch")
  (enable-option navi2ch-mona-enable)
  (muki:define-launcher-key "2" 'navi2ch))

(provide 'init-navi2ch)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
