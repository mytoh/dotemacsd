;;; init-e2wm -*- lexical-binding: t -*-

;;; Code:

(req 'e2wm
     (global-set-key (kbd "M-+") 'e2wm:start-management)
     (req 'e2wm-vcs)

     (setq e2wm:def-plugin-clock-url "http://www.avtokei.jp/images/clocks/%H/%H%M.jpg\?1277461066")
     (setq e2wm:def-plugin-clock-referer "http://www.avtokei.jp/index.html")

     ;; C-c ; m に magit パースペクティブ変更を割り当て
     (e2wm:add-keymap
      e2wm:pst-minor-mode-keymap
      '(("prefix m" . e2wm:dp-magit))
      e2wm:prefix-key)

     ;; (req 'e2wm-direx

     ;;      (setq e2wm:c-code-winfo
     ;;            '((:name main)
     ;;              (:name files    :plugin direx)
     ;;              (:name history :plugin history-list)
     ;;              (:name imenu   :plugin imenu :default-hide nil)
     ;;              (:name sub     :buffer "*info*" :default-hide t))))

     ;;; dashboard

     (setq e2wm:c-dashboard-plugins
           '(clock top
             (open :plugin-args (:command eshell :buffer "*eshell*"))
             (open :plugin-args (:command doctor :buffer "*doctor*"))))

     )


(provide 'init-e2wm)

;;; init-e2wm.el ends here
