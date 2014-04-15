;;; config-rcirc -*- lexical-binding: t -*-

(set-option rcirc-omit-responses '("JOIN" "PART" "QUIT" "NICK" "AWAY"))
(set-option rcirc-default-nick "tat")
(set-option rcirc-default-user-name "tat")
(set-option rcirc-default-full-name "tat")
(set-option rcirc-server-alist
            '(("irc.freenode.net" :port 6697 :encryption tls
               :channels ("#rcirc" "#emacs" "#emacswiki" "#scheme"))))

(provide 'config-rcirc)
;;; config-rcirc.el ends here
