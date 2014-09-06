
(req 'tramp

  ;; (setq tramp-default-method "ssh")

  ;; (setq vc-handled-backends '(SVN GIT))

  ;; Disable version control. If you access remote files which are not under version control, a lot of check operations can be avoided by disabling VC. This can be achieved by
  (setq vc-ignore-dir-regexp
        (format "\\(%s\\)\\|\\(%s\\)"
                vc-ignore-dir-regexp
                tramp-file-name-regexp))

  ;; デフォルトは '(RCS CVS SVN SCCS Bzr Git Hg Mtn Arch)
  ;; (defadvice tramp-handle-vc-registered (around tramp-handle-vc-registered-around activate)
  ;;   (let ((vc-handled-backends '())) ad-do-it))

  ;; C-x C-f /sudo:root@host[#port]:/path/to/file
  ;; (setq tramp-default-proxies-alist
  ;;       '((".*" "\\`root\\'" "/ssh:%h:")))
  )
(provide 'config-tramp)
