;;; init-helm-ypv.el -*- lexical-binding: t -*-

(liby 'helm-ypv
  (command (helm-ypv helm-ypv-bookmarks helm-ypv-channels)
           "helm-ypv")

  (after 'helm-ypv
      ;; (set-option helm-ypv-local-address "localhost:7144")
      (set-option helm-ypv-local-address "peca2.koti:7144")
    (load-file (locate-user-emacs-file "helm-ypv/yp")))

  (set-option  helm-ypv-yp-urls
               '((sp  "bayonet.ddo.jp/sp")
                 (tp  "temp.orz.hm/yp")
                 ;; (dp  "dp.prgrssv.net")
                 ;; (hktv "games.himitsukichi.com/hktv")
                 (turf-page "peercast.takami98.net/turf-page")
                 (oekaki "oekakiyp.appspot.com")
                 (event "eventyp.xrea.jp")
                 ;; (message "peercast.takami98.net/message-yp")
                 ))

  (set-option helm-ypv-player-type 'mpv)
  (set-option helm-ypv-default-protocol "mmshttp")

  ;; (helm-migemize-command 'helm-ypv)
  )

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
