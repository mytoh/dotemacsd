;; emms

(use-package emms-setup
  :init
  (set-option emms-source-file-default-directory
              (muki:expand-path-huone "musiikki"))
  
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
