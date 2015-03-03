;;; paketti-erc-tweet.el -*- lexical-binding: t -*-

(req 'erc-tweet
     (add-to-list 'erc-modules 'tweet)
     (erc-update-modules))

(provide 'paketti-erc-tweet)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
