;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


;;;;; helm
(hoarder:register "emacs-helm/helm"
  '(:build ["gmake"]
    :dependency ["jwiegley/emacs-async"]
    :tag ["helm"]))
(hoarder:fetch "emacs-helm/helm.wiki"
  '(:tag ["helm" "wiki"]))
(hoarder:register "thierryvolpiatto/pcomplete-extension")
(hoarder:register "yuutayamada/helm-ag-r"
  '(:tag ["helm" "ag"]))
(hoarder:register "yasuyk/helm-git-grep"
  '(:tag ["helm" "git"]
    :dependency ["emacs-helm/helm-elscreen"]))
;; (hoarder:register "emacs-helm/helm-migemo"
;;                   '(:tag ("helm" "migemo")))
(hoarder:register "emacs-helm/helm-ls-git"
  '(:tag ["helm" "git"]))
(hoarder:register "emacs-helm/helm-ls-hg"
  '(:tag ["helm" "mercurial"]))
(hoarder:register "emacs-helm/helm-cmd-t"
  '(:tag ["helm"]))
(hoarder:register "ShingoFukuyama/helm-swoop"
  '(:tag ["helm"]))
(hoarder:register "steckerhalter/helm-google"
  '(:tag ["helm" "google"]))
(hoarder:register "syohex/emacs-helm-ag"
  '(:tag ["helm" "ag"]))
(hoarder:register "markus1189/helm-hoogle"
  '(:tag ["helm" "haskell"]))
(hoarder:register "jixiuf/helm-etags-plus"
  '(:tag ["helm"]))
(hoarder:register "syohex/emacs-helm-themes"
  '(:tag ["helm" "theme"]))
(hoarder:register "syohex/emacs-helm-open-github"
  '(:tag ["helm" "github"]
    :dependency [("sigma/gh.el"
                  (:dependency ["sigma/logito"
                                "sigma/pcache"]))]))
(hoarder:register "istib/helm-mode-manager"
  '(:tag ["helm"]))
(hoarder:register "tkf/emacs-pinot-search"
  '(:tag ["helm"]))
(hoarder:register "yasuyk/helm-flycheck"
  '(:tag ["helm" "flycheck"]))
(hoarder:register "emacs-helm/helm-descbinds"
  '(:tag ["helm"]))
(hoarder:register "manuel-uberti/helm-company"
  '(:dependency ["rejeep/f.el"]
    :tag ["helm" "company"]))
(hoarder:register "emacs-helm/helm-dictionary"
  '(:tag ["helm"]))
(hoarder:register "emacs-helm/helm-recoll"
  '(:tag ["helm"]))
(hoarder:register "mhayashi1120/Emacs-wgrep")
(hoarder:register "ShingoFukuyama/helm-css-scss"
  '(:tag ["helm" "css"]))
(hoarder:register "tmalsburg/helm-bibtex"
  '(:dependency ["joostkremers/ebib"
                 "magnars/s.el"
                 "magnars/dash.el"
                 "rejeep/f.el"
                 "joostkremers/parsebib"]
    :tag ["helm" "bibtex"]))
(hoarder:register "k1LoW/helm-dirset"
  '(:dependency ["rejeep/f.el"
                 "magnars/s.el"
                 ("emacs-helm/helm"
                  (:build ["gmake"]
                   :dependency ["jwiegley/emacs-async"]
                   :tag ["helm"]))]))
(hoarder:register "pronobis/helm-words"
  '(:dependency [("emacs-helm/helm"
                  (:build ["gmake"]
                   :dependency ["jwiegley/emacs-async"]
                   :tag ["helm"]))]
    :tag ["helm" "dictionary"]))
(hoarder:register "emacs-jp/helm-orgcard"
  '(:tag ["helm" "org"]
    :dependency [("emacs-helm/helm"
                  (:build ["gmake"]
                   :dependency ["jwiegley/emacs-async"]
                   :tag ["helm"]))]))
(hoarder:register "lins05/helm-org-files"
  '(:tag ["helm" "org"]
    :dependency [("emacs-helm/helm"
                  (:build ["gmake"]
                   :dependency ["jwiegley/emacs-async"]
                   :tag ["helm"]))]))
(hoarder:register "abo-abo/helm-org-wiki"
  '(:tag ["helm" "org"]))
(hoarder:register "yuutayamada/helm-shell-history"
  '(:tag ["helm" "term"]))
(hoarder:register "david-christiansen/helm-pages"
  '(:tag ["helm"]))
(hoarder:register "vanicat/helm-xmms2"
  '(:tag ["helm" "xmms2"]))
(hoarder:register "julienXX/helm-lobste.rs"
  '(:tag ["helm" "lobste.rs" "news" "web"]))
(hoarder:register "syohex/emacs-helm-hackernews"
  '(:tag ["helm" "hackernews" "news" "web"]))
(hoarder:register "Fuco1/sallet"
  '(:tag ["helm"]
    :dependency ["lewang/flx"
                 ("magnars/dash.el" ( :compile nil))
                 "magnars/s.el"
                 "jwiegley/emacs-async"
                 "cask/shut-up"
                 "lewang/flx"
                 "jwiegley/emacs-async"
                 "ShingoFukuyama/ov.el"]))
(hoarder:register "Sliim/helm-github-stars"
  '(:tag ["helm" "github"]))
(hoarder:register "ralesi/helm-pt"
  '(:tag ["helm" "pt"]))
(hoarder:register "abo-abo/swiper"
  '(:tag ["isearch"]
    ;; :dependency ["abo-abo/ivy"] ; not yet created
    :desc "Isearch with an overview. Oh, man! "
    :dependency ["abo-abo/hydra"]))
(hoarder:register "abo-abo/swiper-helm"
  '(:tag ["helm" "search"]))
(hoarder:register "emacs-helm/helm-emms"
  '(:tag ["helm" "emms"]))
(hoarder:register "cute-jumper/ace-jump-helm-line"
  '(:dependency ["abo-abo/ace-window"]))
;; (hoarder:register "shosti/helm-unicode"
;;   '(:tag ["helm" "unicode"]))
(hoarder:register "bomgar/helm-unicode"
  '(:tag ["helm" "unicode"]))
(hoarder:register "jupl/helm-gitignore"
  '(:tag ["helm" "git" "gitignore"]))
(hoarder:register "xuchunyang/helm-commandlinefu")
(hoarder:register "vapniks/helm-helm-commands")
(hoarder:register "emacs-jp/helm-migemo"
  '(:tag ["migemo" "japanese"]))
(hoarder:register "EphramPerdition/helm-fuzzier"
  '(:tag ["fuzzy_matching"]))
;; (hoarder:register "PythonNut/helm-flx"
;;  '(:tag ["fuzzy_matching"]
;;    :dependency ["lewang/flx"]))
(hoarder:register "syohex/emacs-helm-japanese-weather")
(hoarder:register "syohex/emacs-helm-kaomoji")
(hoarder:register "emacs-helm/helm-describe-modes")
(hoarder:register "alphapapa/helm-org-rifle"
  '(:tag ["org" "helm"]))
(hoarder:register "masutaka/emacs-helm-qiita")
(hoarder:register "markus1189/helm-proc")
(hoarder:register "michael-heerdegen/helm-browse")
(hoarder:register "hatschipuh/helm-ido-like-guide"
  '(:tag ["helm" "helm-fuzzier" "helm-flx"]))
(hoarder:register "vapniks/helm-delicious"
  '(:tag ["helm" "delicious" "bookmark"]))
(hoarder:register "ptrv/helm-smex"
  '(:tag ["helm" "smex" "M-x"]
    :dependency ["nonsequitur/smex"]))
(hoarder:register "bomgar/helm-rage")
(hoarder:register "torgeir/helm-hunks.el")
(hoarder:register "maximus12793/helm-youtube"
  '(:tag ["youtube"]))
(hoarder:register "emacsorphanage/helm-ls-svn"
  '(:tag ["svn"]))
(hoarder:register "ShingoFukuyama/helm-recentd"
  '(:tag ["helm"]))
(hoarder:register "masasam/emacs-helm-tramp"
  '(:desc "Tramp with helm interface"
    :tag ["tramp"]))
(hoarder:register "cute-jumper/helm-ext"
  '(:desc "Extensions to helm (dirty hacks)"))
(hoarder:register "grugrut/helm-books"
  '(:desc "Book search interface for emacs helm."
    :tag ["helm" "book" "google_books"]
    :memo "[[http://grugrut.hatenablog.jp/entry/2017/03/15/222729][本の情報を取得するためのHelm拡張を作ってみた(途中) - ぐるっとぐりっど]]"))
(hoarder:register "emacs-helm/helm-navi"
  '(:desc "Navigate headings and keywords provided by outshine and navi-mode using Helm"
    :tag ["helm" "outshine"]))
(hoarder:register "brotzeitmacher/helm-xref"
  '(:desc "Helm interface for xref results"
    :tag ["helm" "xref"]))

;; (hoarder:register "michael-heerdegen/helm-browse"
;;                  '(:tag ["helm"]
;;                    :dependency ["michael-heerdegen/iterators.el"]))


;;; init.el ends here
