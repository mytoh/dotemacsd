;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


;;;;; evil
;; (hoarder:register "https://bitbucket.org/lyro/evil"
;;   '(:build ["gmake clean doc all"]
;;     :info "doc"
;;     :dependencies ["emacsmirror/goto-chg"
;;                  "http://www.dr-qubit.org/git/undo-tree.git"]
;;     :tags ["evil"]
;;     :type :hg))
(hoarder:register "emacs-evil/evil"
  '(:build ["gmake clean doc all"]
    :info "doc"
    :dependencies ["emacs-evil/goto-chg"
                   "http://www.dr-qubit.org/git/undo-tree.git"]
    :tags ["evil"]))
(hoarder:register "cofi/evil-leader"
  '(:tags ["evil"]))
(hoarder:register "emacs-evil/evil-surround"
  '(:tags ["evil"]))
(hoarder:register "redguardtoo/evil-nerd-commenter"
  '(:tags ["evil"]))
(hoarder:register "redguardtoo/evil-matchit"
  '(:tags ["evil"]))
(hoarder:register "Dewdrops/evil-exchange"
  '(:tags ["evil"]))
(hoarder:register "bling/evil-visualstar"
  '(:tags ["evil"]))
(hoarder:register "tarao/evil-plugins"
  '(:tags ["evil"]))
(hoarder:register "tarleb/evil-rebellion"
  '(:tags ["evil"]))
(hoarder:register "AshleyMoni/evil-sneak"
  '(:tags ["evil"]))
(hoarder:register "juanjux/evil-search-highlight-persist"
  '(:tags ["evil"]
    :dependencies ["emacsmirror/highlight"]))
(hoarder:register "sunesimonsen/evil-walk-on-the-edge"
  '(:tags ["evil"]))
(hoarder:register "roman/evil-paredit"
  '(:tags ["evil"]))
(hoarder:register "Dewdrops/evil-extra-operator"
  '(:tags ["evil"]))
(hoarder:register "cofi/evil-indent-textobject"
  '(:tags ["evil"]))
(hoarder:register "linktohack/evil-space"
  '(:tags ["evil"]))
;; (hoarder:register "jschaf/evil-smartparens"
;;                  '(:tags ["evil"]))
(hoarder:register "expez/evil-smartparens"
  '(:tags ["evil" "smartparens"]))
(hoarder:register "nadavspi/evil-linewise"
  '(:dependencies ["emacsmirror/move-text"]
    :tags ["evil"]))
(hoarder:register "TheBB/evil-paragraph-textobject"
  '(:tags ["evil"]))
(hoarder:register "syl20bnr/evil-lisp-state"
  '(:dependencies ["Fuco1/smartparens"
                   "justbur/emacs-bind-map"]
    :compile nil
    :tags ["evil"]))
(hoarder:register "syl20bnr/evil-escape"
  '(:tags ["evil"]
    :dependencies ["emacsmirror/key-chord"]))
(hoarder:register "gridaphobe/evil-god-state"
  '(:tags ["evil"]
    :dependencies ["chrisdone/god-mode"]))
(hoarder:register "PythonNut/evil-easymotion"
  '(:tags ["evil"]
    :dependencies ["abo-abo/avy"
                   "nicferrier/emacs-noflet"]))
(hoarder:register "hlissner/evil-snipe"
  '(:tags ["evil"]))
(hoarder:register "linktohack/evil-commentary"
  '(:tags ["evil"]))
(hoarder:register "syl20bnr/evil-tutor"
  '(:tags ["evil" "tutorial"]))
(hoarder:register "roman/evil-visual-mark-mode"
  '(:tags ["evil"]))
(hoarder:register "bcarrell/evil-lispy"
  '(:tags ["evil" "lispy"]
    :dependencies [("abo-abo/lispy"
                    (:dependencies ["sviridov/undercover.el"]))]))
(hoarder:register "linktohack/evil-rsi")
(hoarder:register "luxbock/evil-cleverparens"
  '(:dependencies ["rejeep/drag-stuff.el"
                   "http://mumble.net/~campbell/git/paredit.git"
                   "Fuco1/smartparens"]))
;; (hoarder:register "lotabout/evil-mc"
;;                   '(:tags ["evil" "multiple-cursor"]))
(hoarder:register "gabesoft/evil-mc"
  '(:tags ["evil" "multiple-cursor"]))
(hoarder:register "willghatch/emacs-on-parens"
  '(:tags ["evil" "smartparens"]
    :dependencies ["Fuco1/smartparens"
                   "magnars/dash.el"]))
(hoarder:register "syl20bnr/evil-iedit-multiple-cursors"
  '(:tags ["evil" "multiple-cursors"]))
(hoarder:register "blorbx/evil-quickscope"
  '(:tags ["evil"]))
(hoarder:register "louy2/evil-avy"
  '(:tags ["evil" "avy"]))
(hoarder:register "noctuid/evil-textobj-anyblock"
  '(:tags ["evil" "textobj"]))
(hoarder:register "syl20bnr/evil-iedit-state"
  '(:tags ["evil" "iedit"]
    :dependencies ["tsdh/iedit"]))
(hoarder:register "justbur/emacs-bind-map"
  '(:tags ["evil" "key_binding"]))
(hoarder:register "justbur/pure-evil"
  '(:tags ["evil" "key_binding"]))
(hoarder:register "hlissner/evil-multiedit"
  '(:tags ["evil" "multiple-cursors"]
    :dependencies ["tsdh/iedit"]))
(hoarder:register "KNX32542/syndicate"
  '(:tags ["evil" "org"]))
(hoarder:register "edwtjo/evil-org-mode"
  '(:tags ["evil"]))
;; (hoarder:register "Somelauw/evil-org-improved"
;;   '(:tags ["evil" "orgmode"])) 
(hoarder:register "GuiltyDolphin/org-evil"
  '(:tags ["evil" "org-mode"]
    :dependencies ["GuiltyDolphin/monitor"
                   ("magnars/dash.el" ( :compile nil))]))
(hoarder:register "Dewdrops/evil-ReplaceWithRegister")
(hoarder:register "wbolster/evil-swap-keys")
(hoarder:register "0robustus1/opener.el"
  '(:dependencies ["tkf/emacs-request"]))
(hoarder:register "noctuid/targets.el"
  '(:description "Extension of evil text objects"))
(hoarder:register "troyp/evil-adjust"
  '(:description "Adjustments for Emacs end-of-line commands in evil's normal state."))
(hoarder:register "TheBB/evil-indent-plus"
  '(:description "Better indent textobjects for evil"))
(hoarder:register "emacs-evil/evil-ediff"
  '(:tags ["ediff" "evil" "diff" "keybinding"]))
(hoarder:register "emacs-evil/evil-magit"
  '(:tags ["evil" "magit"]))
(hoarder:register "shnarazk/evil-insert-emacs"
  '(:description "Another insert mode with more emacs features for Evil"))
(hoarder:register "edkolev/evil-lion"
  '(:description "Evil align operator"
    :tags ["evil" "align"]))
(hoarder:register "edkolev/evil-goggles"
  '(:description "Display visual hint on evil edit operations"
    :tags ["evil" "highlight"]))
(hoarder:register "troyp/evil-visual-replace"
  '(:description "Search and replace within Emacs evil-mode's visual blocks (rectangle selections)"
    :tags ["emacs" "evil" "rectangle" "visual-state"]
    :dependencies ["joddie/pcre2el"]))
(hoarder:register "jojojames/evil-integrations"
  '(:description "Provides a sane set of defaults for use with Evil Mode."))
(hoarder:register "edkolev/evil-expat"
  '(:description "Extra evil ex commands"))
(hoarder:register "Ambrevar/evil-special-modes"
  '(:description "Make Emacs official special modes more Evil"
    :tags ["emacs" "evil"]))
(hoarder:register "7696122/evil-terminal-cursor-changer"
  '(:description ":smiling_imp: Chagning cursor by mode for evil on terminal."))
(hoarder:register "zmaas/evil-unimpaired"
  '(:description "Port of evil-unimpaired code from spacemacs, for general evil use."))


;;; init.el ends here
