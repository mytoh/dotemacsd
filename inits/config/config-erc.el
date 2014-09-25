;;; config-erc.el -*- lexical-binding: t -*-

(liby 'erc
  (erc-autojoin-mode 1)

  ;;(erc :server "chat.freenode.net" :port 6667 :nick "teask")
  (after "erc"
      (setq erc-autojoin-channels-alist
       '(("chat.freenode.net"
          "#emacs"
          ;; "#scheme" "#freebsd-src" "#erc"
          ;;"#lisp" "#github" "#vim" "#git" "#zsh" "#tmux" "#xmonad"
          )))

    ;; don't notify some information
    (setq erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT" "MODE"
                                    "324"  "329"  "332"  "333" "353" "477"))

    ;; hide
    (setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK"))

    ;; Interpret mIRC-style color commands in IRC chats
    (setq erc-interpret-mirc-color t)

    ;; Kill buffers for private queries after quitting the server
    (setq erc-kill-queries-on-quit t)
    ;; Kill buffers for server messages after quitting the server
    (setq erc-kill-server-buffer-on-quit t))

  )

(provide 'config-erc)
