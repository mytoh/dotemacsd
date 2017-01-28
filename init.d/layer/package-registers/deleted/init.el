;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


(hoarder:fetch "https://gitlab.com/blumentritt-sebastian/ryo.git"
  '(:tag ["dotfiles"]))
(hoarder:fetch "inakido/dotfiles"
  '(:tag ["dotfiles" "dwm"]))
(hoarder:register-theme "https://gitlab.com/ghostey/emacs-doomsday-theme.git")

(hoarder:fetch "https://gitlab.com/juki/archer.git"
  '(:tag ["common_lisp" "clojure"]
    :depth nil))

(hoarder:fetch "Verb656/Dotfiles"
  '(:tag ["i3" "yabar"]))

(hoarder:fetch "uwabami/el-get-deb-package"
  '(:tag ["el-get" "debian"]))

(hoarder:fetch "https://gitgud.io/raidh0/beorc-gothic.git"
  '(:tag ["font" "runic"]))

(hoarder:fetch "https://gitlab.com/KNX32542/dotfiles.git"
  '(:tag ["gitlab" "evil" "org" "emacs" "syndicate" "org-babel"]
    :depth nil))

;;; init.el ends here
