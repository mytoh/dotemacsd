
(liby 'tramp

  ;; (setq vc-handled-backends '(SVN GIT))

  ;; Disable version control. If you access remote files which are not under version control, a lot of check operations can be avoided by disabling VC. This can be achieved by
  (setq vc-ignore-dir-regexp
        (format "\\(%s\\)\\|\\(%s\\)"
                vc-ignore-dir-regexp
                tramp-file-name-regexp))

  ;; [[http://emacs.stackexchange.com/questions/461/configuration-of-eshell-running-programs-from-directories-in-path-env-variable/2106#2106]]
  ;; You can configure TRAMP to respect the PATH variable on the remote machine (for remote eshell sessions) by adding 'tramp-own-remote-path to the list 'tramp-remote-path:
  ;; this breaks ssh & sudo combination
  ;; (add-to-list 'tramp-remote-path 'tramp-own-remote-path)

  ;; デフォルトは '(RCS CVS SVN SCCS Bzr Git Hg Mtn Arch)
  ;; (defadvice tramp-handle-vc-registered (around tramp-handle-vc-registered-around activate)
  ;;   (let ((vc-handled-backends '())) ad-do-it))

  ;; C-x C-f /sudo:root@host[#port]:/path/to/file
  ;; (setq tramp-default-proxies-alist
  ;;       '((".*" "\\`root\\'" "/ssh:%h:")))

  ;; (setq tramp-default-proxies-alist nil)
  ;; (add-to-list 'tramp-default-proxies-alist
  ;;              '(nil "\\`root\\'" "/ssh:%h:"))
  ;; (add-to-list 'tramp-default-proxies-alist
  ;;              '((regexp-quote (system-name)) nil nil))

  ;; (set-option ange-ftp-generate-anonymous-password "ftp")
  )
