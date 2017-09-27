;;; init-helm-yplistener.el -*- lexical-binding: t -*-

(liby 'helm-yplistener
  (command (helm-yplistener helm-yplistener-bookmarks helm-yplistener-channels)
           "helm-yplistener")

  (after 'helm-yplistener
    ;; (set-option helm-yplistener-local-address "localhost:7144")
    (validate-setq helm-yplistener-local-address
                   '(:host "peca2.koti"
                     :port 7144))
    (when (file-exists-p (locate-user-emacs-file "helm-yplistener/yp"))
      (load-file (locate-user-emacs-file "helm-yplistener/yp")))
    

    (validate-setq helm-yplistener-yp-urls
                   '((sp  "bayonet.ddo.jp/sp")
                     (tp  "temp.orz.hm/yp")
                     ;; (dp  "dp.prgrssv.net")
                     (hktv "games.himitsukichi.com/hktv")
                     ;; (turf-page "peercast.takami98.net/turf-page")
                     ;; (oekaki "oekakiyp.appspot.com")
                     ;; (event "eventyp.xrea.jp")
                     ;; (message "peercast.takami98.net/message-yp")
                     (twitchjp "gerogugu.web.fc2.com/tjyp")
                     ))

    (validate-setq helm-yplistener-player-type :mpv)
    (validate-setq helm-yplistener-default-protocol "mmshttp"))

  ;; (helm-migemize-command 'helm-yplistener)
  )

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
