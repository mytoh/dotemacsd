;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'git-messenger
  (command (git-messenger:popup-message)
           "git-messenger")
  (setq git-messenger:show-detail t)
  (global-set-key (kbd "C-x v p")
                  #'git-messenger:popup-message))

;;; init.el ends here
