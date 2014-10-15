
(req 'tumblesocks
  (set-option tumblesocks-blog "maito.tumblr.com")
  (set-option oauth-nonce-function 'oauth-internal-make-nonce)
  )

(provide 'init-tumblesocks)
