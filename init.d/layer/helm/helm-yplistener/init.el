;;; init-helm-yplistener.el -*- lexical-binding: t -*-

(liby 'helm-yplistener
  (command (helm-yplistener helm-yplistener-bookmarks helm-yplistener-channels)
           "helm-yplistener")

  (after 'helm-yplistener
      ;; (set-option helm-yplistener-local-address "localhost:7144")
      (set-option helm-yplistener-local-address "peca2.koti:7144")
    (when (file-exists-p (locate-user-emacs-file "helm-yplistener/yp"))
      (load-file (locate-user-emacs-file "helm-yplistener/yp"))))

  (set-option  helm-yplistener-yp-urls
               '((sp  "bayonet.ddo.jp/sp")
                 (tp  "temp.orz.hm/yp")
                 ;; (dp  "dp.prgrssv.net")
                 (hktv "games.himitsukichi.com/hktv")
                 (turf-page "peercast.takami98.net/turf-page")
                 (oekaki "oekakiyp.appspot.com")
                 (event "eventyp.xrea.jp")
                 ;; (message "peercast.takami98.net/message-yp")
                 ))

  (set-option helm-yplistener-player-type 'mpv)
  (set-option helm-yplistener-default-protocol "mmshttp")

  ;; (helm-migemize-command 'helm-yplistener)
  )

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
