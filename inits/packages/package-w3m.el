;; w3m
;; (setq w3m-command "/usr/local/bin/w3m")

(lazyload (w3m w3m-browse-url w3m-find-file w3m-search) "w3m"
          (setq w3m-use-cookies t
                w3m-default-display-inline-images t
                w3m-home-page "http://www.google.com/"))

(provide 'package-w3m)
