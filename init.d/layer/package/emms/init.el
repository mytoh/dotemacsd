;; emms

(req 'emms-setup
  (emms-all)
  (emms-default-players)

  (set-option emms-source-file-default-directory
              (muki:expand-path-huone "musiikki")))

(muki:comment
 ;; debug players
 (emms-player-for '(*track* (type . file)
                            (name . "myfile.pls")))
 (emms-player-for '(*track* (type . url)
                            (name . "http://test")))
 (emms-player-for '(*track* (type . file)
                            (name . "test.flac")))
 )
