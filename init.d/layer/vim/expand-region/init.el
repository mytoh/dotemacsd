;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;; [[http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/]]
;; (liby 'expand-region
;;   (evil-global-set-key 'visual "v"
;;                        #'er/expand-region)
;;   (evil-global-set-key 'visual (kbd "C-v")
;;                        #'er/contract-region))

;; https://github.com/syl20bnr/spacemacs/blob/c788da709bb1c74344f5ab1b6f18cfdf6b930df8/layers/%2Bspacemacs/spacemacs-editing/packages.el#L96
(liby 'expand-region
  (after 'bind-map
    (bind-map-set-keys my-base-leader-map
      "v" #'er/expand-region))
  (setq expand-region-contract-fast-key "V"
        expand-region-reset-fast-key "r"))


;;; init.el ends here
