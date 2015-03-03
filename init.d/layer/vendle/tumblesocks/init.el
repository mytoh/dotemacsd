
(liby 'tumblesocks
  (auto (tumblesocks-viwe-dashboard
         tumblesocks-viwe-blog)
        "tumblesocks")
  (set-option tumblesocks-blog "maito.tumblr.com")
  (set-option oauth-nonce-function 'oauth-internal-make-nonce)
  )

(provide 'init-tumblesocks)
