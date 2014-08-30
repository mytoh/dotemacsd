;;; init-helm-ypv.el -*- lexical-binding: t -*-

(liby 'helm-ypv
      (autoload 'helm-ypv "helm-ypv")
      (autoload 'helm-ypv-bookmarks "helm-ypv")
      (autoload 'helm-ypv-channels "helm-ypv")

      (with-eval-after-load 'helm-ypv
        ;; (set-option helm-ypv-local-address "localhost:7144")
        (set-option helm-ypv-local-address "peca.koti:7145")
        (load-file "~/.emacs.d/helm-ypv/yp"))

      (muki:define-global-key (kbd "y") 'helm-ypv)

      (set-option  helm-ypv-yp-urls
                   '((sp  "bayonet.ddo.jp/sp")
                     (tp  "temp.orz.hm/yp")
                     (dp  "dp.prgrssv.net")
                     (hktv "games.himitsukichi.com/hktv")
                     (turf-page "peercast.takami98.net/turf-page")
                     ;; (oekaki "oekakiyp.appspot.com")
                     (event "eventyp.xrea.jp")
                     (message "peercast.takami98.net/message-yp")))

      ;; (helm-migemize-command helm-ypv)
      )

(provide 'init-helm-ypv)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
