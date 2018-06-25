;; emms

(use-package emms-setup
  :init
  (set-option emms-source-file-default-directory
              (muki:expand-path-huone "musiikki"))
  ;; [[https://www.reddit.com/r/emacs/comments/7j0yjp/emms_with_dynamic_cover_thumbnails/][Too Many Requests]]
  (setq emms-browser-covers 'emms-browser-cache-thumbnail)

  
  :config
  (emms-all)
  (emms-default-players)

  (emms-mode-line 1)
  (emms-playing-time 1)
  )

(use-package emms-mode-line-icon
  :after emms
  :config
  )

(muki:comment
 ;; debug players
 (emms-player-for '(*track* (type . file)
                            (name . "myfile.pls")))
 (emms-player-for '(*track* (type . url)
                            (name . "http://test")))
 (emms-player-for '(*track* (type . file)
                            (name . "test.flac")))
 )
