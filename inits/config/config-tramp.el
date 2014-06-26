
(req 'tramp
     (setq tramp-default-method "ssh")

     ;; (setq vc-handled-backends '())

     ;; デフォルトは '(RCS CVS SVN SCCS Bzr Git Hg Mtn Arch)
     (defadvice tramp-handle-vc-registered (around tramp-handle-vc-registered-around activate)
       (let ((vc-handled-backends '())) ad-do-it))

     ;; C-x C-f /sudo:root@host[#port]:/path/to/file
     ;; (setq tramp-default-proxies-alist
     ;;       '((".*" "\\`root\\'" "/ssh:%h:")))
     )
(provide 'config-tramp)
