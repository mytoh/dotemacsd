;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


;;;;; org
(hoarder:register "git://orgmode.org/org-mode.git"
  '(:load-path ["lisp" "contrib/lisp"]
    :compile nil
    :build ["gmake cleanall" "gmake" "gmake autoloads" "gmake doc"]
    :info "doc"
    :tag "org"))
(hoarder:register "tj64/org-hlc")

(hoarder:register "alphapapa/outorg"
  '(:compile nil
    :tag ["org" "outline"]))
(hoarder:register "alphapapa/outshine"
  '(:compile nil
    :tag ["org" "outline"]
    :dependency ["alphapapa/outorg"]))
;; (hoarder:register "jleechpe/outorg-export")
(hoarder:register "alphapapa/navi"
  '(:tag ["org" "outline"]))

(hoarder:register "tj64/outline-magic"
  '(:tag ["org" "outline"]))
(hoarder:register "omouse/org-doing"
  '(:tag "org"))
(hoarder:register "Fuco1/org-pretty-table"
  '(:compile nil :tag "org"))
(hoarder:register "rlister/org-present"
  '(:dependency [("git://orgmode.org/org-mode.git"
                  (:load-path ["lisp" "contrib/lisp"]
                   :compile nil
                   :build ["gmake cleanall" "gmake" "gmake autoloads" "gmake doc"]
                   :info "doc"
                   :tag "org"))]))
(hoarder:register "kawabata/ox-pandoc"
  '(:dependency ["Wilfred/ht.el"
                 "magnars/dash.el"]
    :tag ["org" "pandoc"]))
(hoarder:register "bastibe/org-journal"
  '(:tag ["org"]))
(hoarder:register "calvinwyoung/org-autolist"
  '(:tag ["org"]))
(hoarder:register "krisajenkins/ob-browser"
  '(:tag ["org" "org-babel" "html" "phantomjs"]
    :desc "Render HTML inside Emacs' org-mode"))
(hoarder:register "thisirs/org-context"
  '(:tag ["org" "org-agenda" "org-capture"]
    :desc "Contextual agenda and capture for Org-mode"))
(hoarder:register "woudshoo/html-2-org"
  '(:tag ["org" "html"]
    :desc "Attempts to undo the html export of org"))
(hoarder:register "abo-abo/org-download"
  '(:tag ["org"]
    :dependency ["jwiegley/emacs-async"]))
(hoarder:register "brettviren/org-pub"
  '(:tag ["org" "web" "html"]))
(hoarder:register "tj64/org-dp"
  '(:tag ["org"]))
(hoarder:register "p-m/org-notify"
  '(:tag ["org"]))
(hoarder:register "vapniks/org-gather"
  '(:tag ["org"]))
(hoarder:register "markus1189/org-pdfview"
  '(:tag ["org" "pdf"]))
(hoarder:register "HKey/omboo"
  '(:tag ["org" "bookmark"]
    :desc "Org-mode as BOOkmark"))
(hoarder:register "rexim/org-cliplink"
  '(:tag ["org" "clipboard"]))
(hoarder:register "tarsius/orglink"
  '(:tag ["org"]))
(hoarder:register "seanohalpin/org-link-minor-mode"
  '(:desc "Enable org-mode bracket links in non-org modes"
    :tag ["org"]))
(hoarder:register "snosov1/toc-org"
  '(:tag ["org" "toc"]))
(hoarder:register "mattduck/org-query"
  '(:tag ["org" "agenda"]))
(hoarder:register "alphapapa/org-protocol-capture-html"
  '(:tag ["org" "org-capture" "html"]))
(hoarder:register "linktohack/org-breadcrumbs"
  '(:tag ["org"]))
(hoarder:fetch "tumashu/org-capture-pop-frame"
  '(:tag ["org-mode" "org-capture" "firefox"]))
(hoarder:fetch "thi-ng/org-spec"
  '(:tag ["org" "html" "documentation"]))
(hoarder:register "scallywag/org-board"
  '(:tag ["org-attach" "bookmarking" "pinboard"]))
(hoarder:register "alphapapa/org-bookmark-heading")
(hoarder:register "takaxp/org-tree-slide")
(hoarder:register "unhammer/org-random-todo"
  '(:tag ["orgmode" "agenda" "todo"]))
;; (hoarder:register "talwrii/orgnav"
;;   '(:desc "Quickly navigate and search your emacs org trees; use this navigation to capture and organize. Built with the help of helm."))
(hoarder:fetch "facetframer/orgnav"
  '(:desc " Quickly navigate and search your emacs org trees; use this navigation to capture and organize. Built with the help of helm."))
(hoarder:register "marcowahl/org-section-numbers")
(hoarder:register "tarsius/org-elisp-help")
(hoarder:register "caiorss/org-wiki"
  '(:desc "Wiki for Emacs org-mode built on top of Emacs org-mode."))
(hoarder:register "stardiviner/org-seek.el"
  '(:desc "Searching Org-mode files with search engines."))
(hoarder:register "IvanMalison/org-projectile"
  '(:desc "Manage org-mode TODOs for your projectile projects"
    :tag ["todo" "project" "org-mode" "projectile"]))
(hoarder:register "astahlman/ob-async"
  '(:desc "Asynchronous src_block execution for org-babel"
    :tag ["orgmode"]))
(hoarder:register "cute-jumper/org-table-sticky-header"
  '(:desc "Sticky header for org-mode tables"))
(hoarder:register "titaniumbones/org-writers-room"
  '(:desc "An Emacs minor mode for writers who use org-mode"))
(hoarder:register "https://bitbucket.org/zck/org-parser.el"
  '(:type :hg))
(hoarder:register "https://gitlab.com/to1ne/org-gitlab.git"
  '(:tag ["gitlab" "todo"]
    :depth nil
    :memo "[[https://www.reddit.com/r/emacs/comments/5vkyug/what_packages_are_you_working_on/][Too Many Requests]]"))
(hoarder:register "ofosos/org-epub"
  '(:desc "Org mode epub export"
    :tag ["epub" "org-mode"]))
(hoarder:register "tuhdo/org-recipes"
  '(:desc "A code snippet manager with Org and Helm "
    :tag ["org-mode" "helm" "snippet"]
    :memo "[[https://www.reddit.com/r/emacs/comments/5yzga2/a_code_snippet_navigator_and_collector_with_org/][Too Many Requests]]"))
(hoarder:register "alphapapa/org-sticky-header"
  '(:desc "Show off-screen Org heading at top of window"))
(hoarder:register "alphapapa/org-recent-headings"
  '(:desc "Go to recently used Org headings"))
(hoarder:register "alphapapa/org-quick-peek"
  '(:desc "Quick inline peeks at agenda items and linked nodes in Org-mode"
    :tag ["org-mode" "quick-peek"]
    :dependency ["cpitclaudel/quick-peek"]))

;;; init.el ends here
