;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


;;;;; helm
(hoarder:register "emacs-helm/helm"
  '(:build ["gmake"]
    :dependencies ["jwiegley/emacs-async"]
    :tags ["helm"]))
(hoarder:fetch "emacs-helm/helm.wiki"
  '(:tags ["helm" "wiki"]))
(hoarder:register "thierryvolpiatto/pcomplete-extension")
(hoarder:register "yuutayamada/helm-ag-r"
  '(:tags ["helm" "ag"]))
(hoarder:register "yasuyk/helm-git-grep"
  '(:tags ["helm" "git"]
    :dependencies ["emacs-helm/helm-elscreen"]))
;; (hoarder:register "emacs-helm/helm-migemo"
;;                   '(:tags ("helm" "migemo")))
(hoarder:register "emacs-helm/helm-ls-git"
  '(:tags ["helm" "git"]))
(hoarder:register "emacs-helm/helm-ls-hg"
  '(:tags ["helm" "mercurial"]))
(hoarder:register "emacs-helm/helm-cmd-t"
  '(:tags ["helm"]))
(hoarder:register "ShingoFukuyama/helm-swoop"
  '(:tags ["helm"]))
(hoarder:register "https://framagit.org/steckerhalter/helm-google.git"
  '(:tags ["helm" "google"]))
(hoarder:register "syohex/emacs-helm-ag"
  '(:tags ["helm" "ag"]))
(hoarder:register "markus1189/helm-hoogle"
  '(:tags ["helm" "haskell"]))
(hoarder:register "jixiuf/helm-etags-plus"
  '(:tags ["helm"]))
(hoarder:register "syohex/emacs-helm-themes"
  '(:tags ["helm" "theme"]))
(hoarder:register "syohex/emacs-helm-open-github"
  '(:tags ["helm" "github"]
    :dependencies [("sigma/gh.el"
                    (:dependencies ["sigma/logito"
                                    "sigma/pcache"]))]))
(hoarder:register "istib/helm-mode-manager"
  '(:tags ["helm"]))
(hoarder:register "tkf/emacs-pinot-search"
  '(:tags ["helm"]))
(hoarder:register "yasuyk/helm-flycheck"
  '(:tags ["helm" "flycheck"]))
(hoarder:register "emacs-helm/helm-descbinds"
  '(:tags ["helm"]))
(hoarder:register "emacs-helm/helm-dictionary"
  '(:tags ["helm"]))
(hoarder:register "emacs-helm/helm-recoll"
  '(:tags ["helm"]))
(hoarder:register "mhayashi1120/Emacs-wgrep")
(hoarder:register "ShingoFukuyama/helm-css-scss"
  '(:tags ["helm" "css"]))
(hoarder:register "tmalsburg/helm-bibtex"
  '(:dependencies ["joostkremers/ebib"
                   "magnars/s.el"
                   "magnars/dash.el"
                   "rejeep/f.el"
                   "joostkremers/parsebib"]
    :tags ["helm" "bibtex"]))
(hoarder:register "k1LoW/helm-dirset"
  '(:dependencies ["rejeep/f.el"
                   "magnars/s.el"
                   ("emacs-helm/helm"
                    (:build ["gmake"]
                     :dependencies ["jwiegley/emacs-async"]
                     :tags ["helm"]))]))
(hoarder:register "pronobis/helm-words"
  '(:dependencies [("emacs-helm/helm"
                    (:build ["gmake"]
                     :dependencies ["jwiegley/emacs-async"]
                     :tags ["helm"]))]
    :tags ["helm" "dictionary"]))
(hoarder:register "emacs-jp/helm-orgcard"
  '(:tags ["helm" "org"]
    :dependencies [("emacs-helm/helm"
                    (:build ["gmake"]
                     :dependencies ["jwiegley/emacs-async"]
                     :tags ["helm"]))]))
(hoarder:register "lins05/helm-org-files"
  '(:tags ["helm" "org"]
    :dependencies [("emacs-helm/helm"
                    (:build ["gmake"]
                     :dependencies ["jwiegley/emacs-async"]
                     :tags ["helm"]))]))
(hoarder:register "abo-abo/helm-org-wiki"
  '(:tags ["helm" "org"]))
(hoarder:register "yuutayamada/helm-shell-history"
  '(:tags ["helm" "term"]))
(hoarder:register "david-christiansen/helm-pages"
  '(:tags ["helm"]))
(hoarder:register "vanicat/helm-xmms2"
  '(:tags ["helm" "xmms2"]))
(hoarder:register "julienXX/helm-lobste.rs"
  '(:tags ["helm" "lobste.rs" "news" "web"]))
(hoarder:register "syohex/emacs-helm-hackernews"
  '(:tags ["helm" "hackernews" "news" "web"]))
(hoarder:register "Fuco1/sallet"
  '(:tags ["helm"]
    :dependencies ["lewang/flx"
                   ("magnars/dash.el" ( :compile nil))
                   "magnars/s.el"
                   "jwiegley/emacs-async"
                   "cask/shut-up"
                   "lewang/flx"
                   "jwiegley/emacs-async"
                   "ShingoFukuyama/ov.el"]))
(hoarder:register "Sliim/helm-github-stars"
  '(:tags ["helm" "github"]))
(hoarder:register "ralesi/helm-pt"
  '(:tags ["helm" "pt"]))
(hoarder:register "abo-abo/swiper"
  '(:tags ["isearch"]
    ;; :dependencies ["abo-abo/ivy"] ; not yet created
    :description "Isearch with an overview. Oh, man! "
    :dependencies ["abo-abo/hydra"]))
(hoarder:register "abo-abo/swiper-helm"
  '(:tags ["helm" "search"]))
(hoarder:register "emacs-helm/helm-emms"
  '(:tags ["helm" "emms"]))
(hoarder:register "cute-jumper/ace-jump-helm-line"
  '(:dependencies ["abo-abo/ace-window"]))
;; (hoarder:register "shosti/helm-unicode"
;;   '(:tags ["helm" "unicode"]))
(hoarder:register "bomgar/helm-unicode"
  '(:tags ["helm" "unicode"]))
(hoarder:register "jupl/helm-gitignore"
  '(:tags ["helm" "git" "gitignore"]))
(hoarder:register "xuchunyang/helm-commandlinefu")
(hoarder:register "vapniks/helm-helm-commands")
(hoarder:register "emacs-jp/helm-migemo"
  '(:tags ["migemo" "japanese"]))
(hoarder:register "EphramPerdition/helm-fuzzier"
  '(:tags ["fuzzy_matching"]))
;; (hoarder:register "PythonNut/helm-flx"
;;  '(:tags ["fuzzy_matching"]
;;    :dependencies ["lewang/flx"]))
(hoarder:register "syohex/emacs-helm-japanese-weather")
(hoarder:register "syohex/emacs-helm-kaomoji")
(hoarder:register "emacs-helm/helm-describe-modes")
(hoarder:register "alphapapa/helm-org-rifle"
  '(:tags ["org" "helm"]))
(hoarder:register "masutaka/emacs-helm-qiita")
(hoarder:register "markus1189/helm-proc")
(hoarder:register "michael-heerdegen/helm-browse")
(hoarder:register "hatschipuh/helm-ido-like-guide"
  '(:tags ["helm" "helm-fuzzier" "helm-flx"]))
(hoarder:register "vapniks/helm-delicious"
  '(:tags ["helm" "delicious" "bookmark"]))
(hoarder:register "ptrv/helm-smex"
  '(:tags ["helm" "smex" "M-x"]
    :dependencies ["nonsequitur/smex"]))
(hoarder:register "bomgar/helm-rage")
(hoarder:register "torgeir/helm-hunks.el")
(hoarder:register "maximus12793/helm-youtube"
  '(:tags ["youtube"]))
(hoarder:register "xuchunyang/helm-ls-svn"
  '(:tags ["svn"]))
(hoarder:register "ShingoFukuyama/helm-recentd"
  '(:tags ["helm"]))
(hoarder:register "masasam/emacs-helm-tramp"
  '(:description "Tramp with helm interface"
    :tags ["tramp"]))
(hoarder:register "cute-jumper/helm-ext"
  '(:description "Extensions to helm (dirty hacks)"))
(hoarder:register "grugrut/helm-books"
  '(:description "Book search interface for emacs helm."
    :tags ["helm" "book" "google_books"]
    :memo "[[http://grugrut.hatenablog.jp/entry/2017/03/15/222729][本の情報を取得するためのHelm拡張を作ってみた(途中) - ぐるっとぐりっど]]"))
(hoarder:register "emacs-helm/helm-navi"
  '(:description "Navigate headings and keywords provided by outshine and navi-mode using Helm"
    :tags ["helm" "outshine"]))
(hoarder:register "brotzeitmacher/helm-xref"
  '(:description "Helm interface for xref results"
    :tags ["helm" "xref"]))
(hoarder:register "sivakov512/helm-librarian"
  '(:description "Helm UI for searching in library sources."
    :tags ["emacs lisp" "code-search" "elisp" "emacs" "emacs-lisp" "emacs-plugin" "navigation" "plugin"]))
(hoarder:register "masasam/emacs-helm-directory"
  '(:description "Select directory with helm and select the file in this directory with helm interface."
    :tags ["emacs" "emacs-lisp" "helm"]))
(hoarder:register "iory/emacs-helm-ghs"
  '(:dependencies ["sonatard/ghs"])) 
(hoarder:register "chee/helm-frame"
  '(:description "open helm buffers in a dedicated frame"))
(hoarder:register "xuchunyang/helm-lastpass"
  '(:description "Helm interface of LastPass"
    :dependencies ["gitlab:u11/csv.el"]))
(hoarder:register "alphapapa/helm-swish"
  '(:description "Like helm-swoop, but a little bit faster"))
(hoarder:register "syohex/emacs-helm-perldoc"
  '(:description "perlpod with helm interface"))
(hoarder:fetch "wandersoncferreira/helm-spotify-plus"
  '(:description "New version of Emacs package Helm-spotify"
    :tags ["emacs lisp"]
    :memo "[[https://www.reddit.com/r/emacs/comments/7yz1k2/using_emacs_43_music_with_mpd/][Too Many Requests]]"))
(hoarder:register "tumashu/helm-posframe"
  '(:tags ["emacs lisp"]))

;; (hoarder:register "michael-heerdegen/helm-browse"
;;                  '(:tags ["helm"]
;;                    :dependencies ["michael-heerdegen/iterators.el"]))


;;; init.el ends here
