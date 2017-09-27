;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


;;;;; org
(hoarder:register "git://orgmode.org/org-mode.git"
  '(:load-path ["lisp" "contrib/lisp"]
    :compile nil
    :build ["gmake cleanall" "gmake" "gmake autoloads" "gmake doc"]
    :info "doc"
    :tags ["org"]))
;; (hoarder:register "git://repo.or.cz/org-mode.git"
;;   '(:load-path ["lisp" "contrib/lisp"]
;;     :compile nil
;;     :build ["gmake cleanall" "gmake" "gmake autoloads" "gmake doc"]
;;     :info "doc"
;;     :tags ["org"]))
(hoarder:register "tj64/org-hlc")

(hoarder:register "alphapapa/outorg"
  '(:compile nil
    :tags ["org" "outline"]))
(hoarder:register "alphapapa/outshine"
  '(:compile nil
    :tags ["org" "outline"]
    :dependencies ["alphapapa/outorg"]))
;; (hoarder:register "jleechpe/outorg-export")
(hoarder:register "alphapapa/navi"
  '(:tags ["org" "outline"]))

(hoarder:register "tj64/outline-magic"
  '(:tags ["org" "outline"]))
(hoarder:register "omouse/org-doing"
  '(:tags ["org"]))
(hoarder:register "Fuco1/org-pretty-table"
  '(:compile nil :tags ["org"]))
(hoarder:register "rlister/org-present"
  '(:dependencies [("git://orgmode.org/org-mode.git"
                    (:load-path ["lisp" "contrib/lisp"]
                     :compile nil
                     :build ["gmake cleanall" "gmake" "gmake autoloads" "gmake doc"]
                     :info "doc"
                     :tags ["org"]))]))
(hoarder:register "kawabata/ox-pandoc"
  '(:dependencies ["Wilfred/ht.el"
                   "magnars/dash.el"]
    :tags ["org" "pandoc"]))
(hoarder:register "bastibe/org-journal"
  '(:tags ["org"]))
(hoarder:register "calvinwyoung/org-autolist"
  '(:tags ["org"]))
(hoarder:register "krisajenkins/ob-browser"
  '(:tags ["org" "org-babel" "html" "phantomjs"]
    :description "Render HTML inside Emacs' org-mode"))
(hoarder:register "thisirs/org-context"
  '(:tags ["org" "org-agenda" "org-capture"]
    :description "Contextual agenda and capture for Org-mode"))
(hoarder:register "woudshoo/html-2-org"
  '(:tags ["org" "html"]
    :description "Attempts to undo the html export of org"))
(hoarder:register "abo-abo/org-download"
  '(:tags ["org"]
    :dependencies ["jwiegley/emacs-async"]))
(hoarder:register "brettviren/org-pub"
  '(:tags ["org" "web" "html"]))
(hoarder:register "tj64/org-dp"
  '(:tags ["org"]))
(hoarder:register "p-m/org-notify"
  '(:tags ["org"]))
(hoarder:register "vapniks/org-gather"
  '(:tags ["org"]))
(hoarder:register "markus1189/org-pdfview"
  '(:tags ["org" "pdf"]))
(hoarder:register "HKey/omboo"
  '(:tags ["org" "bookmark"]
    :description "Org-mode as BOOkmark"))
(hoarder:register "rexim/org-cliplink"
  '(:tags ["org" "clipboard"]))
(hoarder:register "tarsius/orglink"
  '(:tags ["org"]))
(hoarder:register "seanohalpin/org-link-minor-mode"
  '(:description "Enable org-mode bracket links in non-org modes"
    :tags ["org"]))
(hoarder:register "snosov1/toc-org"
  '(:tags ["org" "toc"]))
(hoarder:register "mattduck/org-query"
  '(:tags ["org" "agenda"]))
(hoarder:register "alphapapa/org-protocol-capture-html"
  '(:tags ["org" "org-capture" "html"]))
(hoarder:register "linktohack/org-breadcrumbs"
  '(:tags ["org"]))
(hoarder:fetch "tumashu/org-capture-pop-frame"
  '(:tags ["org-mode" "org-capture" "firefox"]))
(hoarder:fetch "thi-ng/org-spec"
  '(:tags ["org" "html" "documentation"]))
(hoarder:register "scallywag/org-board"
  '(:tags ["org-attach" "bookmarking" "pinboard"]))
(hoarder:register "alphapapa/org-bookmark-heading")
(hoarder:register "takaxp/org-tree-slide")
(hoarder:register "unhammer/org-random-todo"
  '(:tags ["orgmode" "agenda" "todo"]))
;; (hoarder:register "talwrii/orgnav"
;;   '(:description "Quickly navigate and search your emacs org trees; use this navigation to capture and organize. Built with the help of helm."))
(hoarder:fetch "facetframer/orgnav"
  '(:description " Quickly navigate and search your emacs org trees; use this navigation to capture and organize. Built with the help of helm."))
(hoarder:register "marcowahl/org-section-numbers")
(hoarder:register "tarsius/org-elisp-help")
(hoarder:register "caiorss/org-wiki"
  '(:description "Wiki for Emacs org-mode built on top of Emacs org-mode."))
(hoarder:register "stardiviner/org-seek.el"
  '(:description "Searching Org-mode files with search engines."))
(hoarder:register "IvanMalison/org-projectile"
  '(:description "Manage org-mode TODOs for your projectile projects"
    :tags ["todo" "project" "org-mode" "projectile"]))
(hoarder:register "astahlman/ob-async"
  '(:description "Asynchronous src_block execution for org-babel"
    :tags ["orgmode"]))
(hoarder:register "cute-jumper/org-table-sticky-header"
  '(:description "Sticky header for org-mode tables"))
(hoarder:register "titaniumbones/org-writers-room"
  '(:description "An Emacs minor mode for writers who use org-mode"))
(hoarder:register "https://bitbucket.org/zck/org-parser.el"
  '(:type :hg))
(hoarder:register "https://gitlab.com/to1ne/org-gitlab.git"
  '(:tags ["gitlab" "todo"]
    :depth nil
    :memo "[[https://www.reddit.com/r/emacs/comments/5vkyug/what_packages_are_you_working_on/][Too Many Requests]]"))
(hoarder:register "ofosos/org-epub"
  '(:description "Org mode epub export"
    :tags ["epub" "org-mode"]))
(hoarder:register "tuhdo/org-recipes"
  '(:description "A code snippet manager with Org and Helm "
    :tags ["org-mode" "helm" "snippet"]
    :memo "[[https://www.reddit.com/r/emacs/comments/5yzga2/a_code_snippet_navigator_and_collector_with_org/][Too Many Requests]]"))
(hoarder:register "alphapapa/org-sticky-header"
  '(:description "Show off-screen Org heading at top of window"))
(hoarder:register "alphapapa/org-recent-headings"
  '(:description "Go to recently used Org headings"
    :dependencies [("alphapapa/frecency.el"
                    :dependencies ["plexus/a.el"])]))
(hoarder:register "alphapapa/org-quick-peek"
  '(:description "Quick inline peeks at agenda items and linked nodes in Org-mode"
    :tags ["org-mode" "quick-peek"]
    :dependencies ["cpitclaudel/quick-peek"]))
(hoarder:register "alphapapa/org-super-agenda"
  '(:description "Supercharge your Org daily/weekly agenda by dividing it into sections"))
(hoarder:register "alphapapa/org-web-tools"
  '(:description "Commands and functions for retrieving web page content and processing it into and displaying it as Org-mode content."))
(hoarder:register "tumashu/org2web"
  '(:description "A static site generator based on org-mode                "))
(hoarder:register "alphapapa/org-pocket"
  '(:description "Tools to use Pocket with Org-mode"
    :memo "[[https://www.reddit.com/r/emacs/comments/6ugm7y/cft_capture_items_from_pocket_reading_list_to_org/][{CFT} Capture items from Pocket reading list to Org mode : emacs]]"))
(hoarder:register "claviclaws/org-mac-protocol"
  '(:description "A suite of AppleScripts and elisp to allow annotation of Emacs org-mode files from other OS X applications"))

(hoarder:fetch "akicho8/org_tp"
  '(:description "OrgTp shows text table like emacs org-table for easy reading."
    :tags ["emacs" "formatter" "org-table" "ruby" "table"]))

;;; init.el ends here
