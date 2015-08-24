;;; init-navi2ch.el -*- lexical-binding: t -*-

;; navi2ch
(liby 'navi2ch
  (defery 'navi2ch)
  (after 'navi2ch
      (require 'navi2ch-mona)
    (enable-option navi2ch-article-use-jit)
    (disable-option navi2ch-article-exist-message-range
                    navi2ch-article-new-message-range)
    (enable-option navi2ch-mona-enable)
    (enable-option navi2ch-mona-use-ipa-mona)
    (set-option navi2ch-mona-ipa-mona-font-family-name "mona-izmg16")
    (navi2ch-mona-setup)
    ))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
