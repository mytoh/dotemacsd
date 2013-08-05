
(req 'tramp
     (setq tramp-default-method "ssh")

     ;; C-x C-f /sudo:root@host[#port]:/path/to/file
     (setq tramp-default-proxies-alist
           '((".*" "\\`root\\'" "/ssh:%h:")))
     (provide 'package-tramp)
