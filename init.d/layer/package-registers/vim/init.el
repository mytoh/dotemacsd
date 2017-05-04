;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


;;;;; evil
;; (hoarder:register "https://bitbucket.org/lyro/evil"
;;   '(:build ["gmake clean doc all"]
;;     :info "doc"
;;     :dependency ["emacsmirror/goto-chg"
;;                  "http://www.dr-qubit.org/git/undo-tree.git"]
;;     :tag ["evil"]
;;     :type :hg))
(hoarder:register "emacs-evil/evil"
  '(:build ["gmake clean doc all"]
    :info "doc"
    :dependency ["emacsmirror/goto-chg"
                 "http://www.dr-qubit.org/git/undo-tree.git"]
    :tag ["evil"]))
(hoarder:register "cofi/evil-leader"
  '(:tag ["evil"]))
(hoarder:register "timcharper/evil-surround"
  '(:tag ["evil"]))
(hoarder:register "redguardtoo/evil-nerd-commenter"
  '(:tag ["evil"]))
(hoarder:register "redguardtoo/evil-matchit"
  '(:tag ["evil"]))
(hoarder:register "Dewdrops/evil-exchange"
  '(:tag ["evil"]))
(hoarder:register "bling/evil-visualstar"
  '(:tag ["evil"]))
(hoarder:register "tarao/evil-plugins"
  '(:tag ["evil"]))
(hoarder:register "tarleb/evil-rebellion"
  '(:tag ["evil"]))
(hoarder:register "AshleyMoni/evil-sneak"
  '(:tag ["evil"]))
(hoarder:register "juanjux/evil-search-highlight-persist"
  '(:tag ["evil"]
    :dependency ["emacsmirror/highlight"]))
(hoarder:register "sunesimonsen/evil-walk-on-the-edge"
  '(:tag ["evil"]))
(hoarder:register "roman/evil-paredit"
  '(:tag ["evil"]))
(hoarder:register "Dewdrops/evil-extra-operator"
  '(:tag ["evil"]))
(hoarder:register "cofi/evil-indent-textobject"
  '(:tag ["evil"]))
(hoarder:register "linktohack/evil-space"
  '(:tag ["evil"]))
;; (hoarder:register "jschaf/evil-smartparens"
;;                  '(:tag ["evil"]))
(hoarder:register "expez/evil-smartparens"
  '(:tag ["evil" "smartparens"]))
(hoarder:register "nadavspi/evil-linewise"
  '(:dependency ["emacsmirror/move-text"]
    :tag ["evil"]))
(hoarder:register "TheBB/evil-paragraph-textobject"
  '(:tag ["evil"]))
(hoarder:register "syl20bnr/evil-lisp-state"
  '(:dependency ["Fuco1/smartparens"
                 "justbur/emacs-bind-map"]
    :compile nil
    :tag ["evil"]))
(hoarder:register "syl20bnr/evil-escape"
  '(:tag ["evil"]
    :dependency ["emacsmirror/key-chord"]))
(hoarder:register "gridaphobe/evil-god-state"
  '(:tag ["evil"]
    :dependency ["chrisdone/god-mode"]))
(hoarder:register "tarleb/evil-scout")
(hoarder:register "PythonNut/evil-easymotion"
  '(:tag ["evil"]
    :dependency ["abo-abo/avy"
                 "nicferrier/emacs-noflet"]))
(hoarder:register "hlissner/evil-snipe"
  '(:tag ["evil"]))
(hoarder:register "linktohack/evil-commentary"
  '(:tag ["evil"]))
(hoarder:register "syl20bnr/evil-tutor"
  '(:tag ["evil" "tutorial"]))
(hoarder:register "roman/evil-visual-mark-mode"
  '(:tag ["evil"]))
(hoarder:register "bcarrell/evil-lispy"
  '(:tag ["evil" "lispy"]
    :dependency [("abo-abo/lispy"
                  (:dependency ["sviridov/undercover.el"]))]))
(hoarder:register "linktohack/evil-rsi")
(hoarder:register "luxbock/evil-cleverparens"
  '(:dependency ["rejeep/drag-stuff.el"
                 "http://mumble.net/~campbell/git/paredit.git"
                 "Fuco1/smartparens"]))
;; (hoarder:register "lotabout/evil-mc"
;;                   '(:tag ["evil" "multiple-cursor"]))
(hoarder:register "gabesoft/evil-mc"
  '(:tag ["evil" "multiple-cursor"]))
(hoarder:register "willghatch/emacs-on-parens"
  '(:tag ["evil" "smartparens"]
    :dependency ["Fuco1/smartparens"
                 "magnars/dash.el"]))
(hoarder:register "syl20bnr/evil-iedit-multiple-cursors"
  '(:tag ["evil" "multiple-cursors"]))
(hoarder:register "blorbx/evil-quickscope"
  '(:tag ["evil"]))
(hoarder:register "louy2/evil-avy"
  '(:tag ["evil" "avy"]))
(hoarder:register "noctuid/evil-textobj-anyblock"
  '(:tag ["evil" "textobj"]))
(hoarder:register "syl20bnr/evil-iedit-state"
  '(:tag ["evil" "iedit"]
    :dependency ["tsdh/iedit"]))
(hoarder:register "justbur/emacs-bind-map"
  '(:tag ["evil" "key_binding"]))
(hoarder:register "justbur/pure-evil"
  '(:tag ["evil" "key_binding"]))
(hoarder:register "hlissner/evil-multiedit"
  '(:tag ["evil" "multiple-cursors"]
    :dependency ["tsdh/iedit"]))
(hoarder:register "KNX32542/syndicate"
  '(:tag ["evil" "org"]))
(hoarder:register "edwtjo/evil-org-mode"
  '(:tag ["evil"]))
;; (hoarder:register "Somelauw/evil-org-improved"
;;   '(:tag ["evil" "orgmode"])) 
(hoarder:register "GuiltyDolphin/org-evil"
  '(:tag ["evil" "org-mode"]
    :dependency ["GuiltyDolphin/monitor"
                 ("magnars/dash.el" ( :compile nil))]))
(hoarder:register "Dewdrops/evil-ReplaceWithRegister")
(hoarder:register "wbolster/evil-swap-keys")
(hoarder:register "0robustus1/opener.el"
  '(:dependency ["tkf/emacs-request"]))
(hoarder:register "noctuid/targets.el"
  '(:desc "Extension of evil text objects"))
(hoarder:register "troyp/evil-adjust"
  '(:desc "Adjustments for Emacs end-of-line commands in evil's normal state."))
(hoarder:register "TheBB/evil-indent-plus"
  '(:desc "Better indent textobjects for evil"))
(hoarder:register "emacs-evil/evil-ediff"
  '(:tag ["ediff" "evil" "diff" "keybinding"]))
(hoarder:register "emacs-evil/evil-magit"
  '(:tag ["evil" "magit"]))
(hoarder:register "shnarazk/evil-insert-emacs"
  '(:desc "Another insert mode with more emacs features for Evil"))
(hoarder:register "edkolev/evil-lion"
  '(:desc "Evil align operator"
    :tag ["evil" "align"]))
(hoarder:register "edkolev/evil-goggles"
  '(:desc "Display visual hint on evil edit operations"
    :tag ["evil" "highlight"]))
(hoarder:register "troyp/evil-visual-replace"
  '(:desc "Search and replace within Emacs evil-mode's visual blocks (rectangle selections)"
    :tag ["emacs" "evil" "rectangle" "visual-state"]
    :dependency ["joddie/pcre2el"]))

;;; init.el ends here
