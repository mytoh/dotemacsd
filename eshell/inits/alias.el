;;; alias -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:eshell-add-alias (name def)
  (add-to-list 'eshell-command-aliases-list (list name def)))

(muki:eshell-add-alias  "img" "propertize \"Image\" (quote display) ${create-image ${expand-file-name $1}}")
(muki:eshell-add-alias  "k" "killall -9 $*")
(muki:eshell-add-alias  "d" "dired-other-window ${pwd}")
(muki:eshell-add-alias  "ff" "find-file $1")
(muki:eshell-add-alias  "ll" "ls -l")
(muki:eshell-add-alias  "la" "ls -a")
(muki:eshell-add-alias  "tk" "talikko $*")
(muki:eshell-add-alias  "futaba" "pikkukivi futaba $*")
(muki:eshell-add-alias  "yotsuba" "pikkukivi yotsuba $*")
(muki:eshell-add-alias  "ylilauta" "pikkukivi ylilauta $*")
(muki:eshell-add-alias  "," "napa $*")
(muki:eshell-add-alias  "ag" "ag --nopager")
(muki:eshell-add-alias  "pam" "rm -rf $*")
(muki:eshell-add-alias  "ke" "save-buffers-kill-emacs")
(muki:eshell-add-alias  "cde" "cd ~/huone/git/git.savannah.gnu.org/emacs.git")
(muki:eshell-add-alias  "gpl" "git pull --verbose")
(muki:eshell-add-alias  "gst" "git status")
(muki:eshell-add-alias  "kuva" "pikkukivi kuva $1")
(muki:eshell-add-alias  "vittu" "pikkukivi vittu $*")

(when (string-equal system-type "berkeley-unix")
  (muki:eshell-add-alias "pcheck" "sudo portmaster -PBiydav && sudo portaudit -Fdav && sudo portmaster --clean-packages --clean-distfiles" )
  (muki:eshell-add-alias "pfetch" "sudo make fetch-recursive" )
  (muki:eshell-add-alias "pinst" "sudo make -s clean reinstall clean distclean")
  (muki:eshell-add-alias "pconf" "sudo make config")
  (muki:eshell-add-alias "pconfr" "sudo make config-recursive")
  (muki:eshell-add-alias "pclean" "sudo make clean "         )
  (muki:eshell-add-alias "ppconf" "make pretty-print-config" )
  (muki:eshell-add-alias "psconf" "make showconfig"          )
  (muki:eshell-add-alias "prmconf" "make rmconfig"           )
  (muki:eshell-add-alias "puniname" "make -VUNIQUENAME"      ))


(load (expand-file-name "alias/build.el" eshell-init-directory))

;;; alias.el ends here
