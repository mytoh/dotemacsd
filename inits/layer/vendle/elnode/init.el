;;; init-elnode -*- lexical-binding: t -*-

;;; Code:
(req 'elnode
  (defvar my-public-dir "~/.org/etusivu")
  (when (file-exists-p my-public-dir)
    (defconst my-elnode-webserver-handler
      (elnode-webserver-handler-maker my-public-dir))
    (elnode-start my-elnode-webserver-handler :port 8901 :host "localhost")))

;;; init-elnode.el ends here
