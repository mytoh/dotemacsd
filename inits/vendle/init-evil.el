;;; init-evil -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(require 'init-evil-leader "init-evil/leader")


(cl-defun muki:init-evil-escape ()
  (req 'evil-escape
    (evil-escape-mode)))

(cl-defun muki:init-evil-escape-w/o-lib ()
  ;; [[https://github.com/davvil/.emacs.d/blob/master/init.el]]
  ;; [[http://juanjoalvarez.net/es/detail/2014/sep/19/vim-emacsevil-chaotic-migration-guide/]]
  ;; esc quits
  (defun minibuffer-keyboard-quit ()
    "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
    (interactive)
    (if (and delete-selection-mode transient-mark-mode mark-active)
        (setq deactivate-mark  t)
      (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
      (abort-recursive-edit)))
  (add-key evil-normal-state-map [escape] 'keyboard-quit)
  (add-key evil-visual-state-map [escape] 'keyboard-quit)
  (add-key evil-emacs-state-map [escape] 'keyboard-quit)
  (add-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
  (add-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
  (add-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
  (add-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
  (add-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
  (global-set-key [escape] 'evil-exit-emacs-state))

(liby 'evil
  (req 'goto-chg)
  (set-option evil-toggle-key "C-`")

  (set-option evil-emacs-state-cursor '("red" box)
              evil-normal-state-cursor '("green" box)
              evil-visual-state-cursor '("orange" box)
              evil-insert-state-cursor '("red" bar)
              evil-replace-state-cursor '("red" bar)
              evil-operator-state-cursor '("red" hollow))
  (set-option evil-search-module 'evil-search
              evil-magic 'very-magic)
  (enable-option evil-cross-lines
                 evil-want-fine-undo
                 evil-cjk-emacs-word-boundary
                 )
  (disable-option evil-move-cursor-back)
  (set-option evil-esc-delay 0.001)

  (cl-locally
      (enable-option evil-want-C-u-scroll)
    (when evil-want-C-u-scroll
      (add-global-key "M-u" 'universal-argument)
      (after "evil"
          (add-key evil-normal-state-map "M-u" 'universal-argument))))

  (req 'evil)

  (init-evil-leader)

  (enable-mode evil-mode)
  ;; [[http://bling.github.io/blog/2013/10/27/emacs-as-my-leader-vim-survival-guide/]]
  ;; (defadvice evil-search-next (after advice-for-evil-ex-search-next activate)
  ;;   (evil-scroll-line-to-center (line-number-at-pos)))

  ;; [[https://github.com/supermomonga/dot-emacs/blob/master/package-config/evil.el]]
  (add-key evil-normal-state-map  "C-h"
           (lambda ()
             (interactive)
             (evil-insert-state)
             (insert-string " ")
             (evil-normal-state)))

  ;; 物理行移動と論理行移動を入れ替え
  ;; http://d.hatena.ne.jp/tarao/20130304/evil_config#misc-physical-line
  (defun evil-swap-key (map key1 key2)
    ;; MAP中のKEY1とKEY2を入れ替え
    "Swap KEY1 and KEY2 in MAP."
    (let ((def1 (lookup-key map key1))
          (def2 (lookup-key map key2)))
      (add-key map key1 def2)
      (add-key map key2 def1)))
  (evil-swap-key evil-motion-state-map "j" "gj")
  (evil-swap-key evil-motion-state-map "k" "gk")

  ;; [[http://stackoverflow.com/questions/8483182/evil-mode-best-practice]]
  (cl-mapc
   (lambda (l)
     (cl-mapc
      (lambda (m)
        (add-key m (car l) (cdr l)))
      (list evil-insert-state-map
            evil-motion-state-map)))
   '(("C-e" . evil-end-of-line)
     ("C-n" . evil-next-line)
     ("C-p" . evil-previous-line)
     ("C-f" . evil-forward-char)
     ("C-b" . evil-backward-char)))

  (add-key evil-normal-state-map  "C-r" 'isearch-backward)
  (add-key evil-motion-state-map ";" 'evil-ex)
  (add-key evil-insert-state-map  "C-c" 'evil-normal-state)
  (add-key evil-visual-state-map  "C-c" 'evil-exit-visual-state)

  (add-key evil-ex-completion-map
    "M-p" 'previous-complete-history-element
    "M-n" 'next-complete-history-element)

  (liby 'helm
    (evil-ex-define-cmd "e[dit]" 'helm-find-files))

  ;; org
  ;; normal state shortcuts
  (evil-define-key 'motion org-mode-map
    "]]" 'org-forward-same-level
    "[[" 'org-backward-same-level
    "{" 'outline-previous-heading
    "}" 'outline-next-heading
    "g{" 'outline-up-heading
    "g}" 'outline-next-heading
    (kbd "TAB") 'org-cycle)

  (evil-define-key 'normal org-mode-map
    "<<" 'org-shiftmetaleft
    ">>" 'org-shiftmetaright
    "<[[" 'org-metaleft
    ">]]" 'org-metaright)

  ;; eww
  (evil-define-key 'motion eww-mode-map
    "<TAB>" 'shr-next-link)

  ;; smartparen
  (liby 'smartparens
    (with-eval-after-load 'smartparens
      ;; (add-key evil-normal-state-map ")" 'sp-up-sexp)
      ;; (add-key evil-normal-state-map "(" 'sp-backward-up-sexp)
      ))

  ;; multiple-cursors
  (after 'multiple-cursors
      (setq mc/cmds-to-run-for-all
       '(evil-append-line
         evil-backward-WORD-begin
         evil-backward-word-begin
         evil-delete-char
         evil-delete-line
         evil-digit-argument-or-evil-beginning-of-line
         evil-emacs-state
         evil-end-of-line
         evil-force-normal-state
         evil-forward-WORD-begin
         evil-forward-WORD-end
         evil-forward-word-begin
         evil-forward-word-end
         evil-insert
         evil-next-line
         evil-normal-state
         evil-previous-line)))

  ;; elisp-slime-nav
  (after 'elisp-slime-nav
      (evil-define-key 'normal emacs-lisp-mode-map (kbd "K")
                       'elisp-slime-nav-describe-elisp-thing-at-point))


  (muki:init-evil-escape)

  (cl-loop for (mode . state) in '((git-commit-mode . insert)
                                   (git-rebase-mode . emacs)
                                   (help-mode . emacs)
                                   (ebib-entry-mode              . emacs)
                                   (ebib-index-mode              . emacs)
                                   (ebib-log-mode                . emacs)
                                   (elfeed-show-mode             . emacs)
                                   (elfeed-search-mode           . emacs)
                                   (navi2ch-message-mode           . emacs)
                                   (navi2ch-board-mode           . emacs)
                                   (navi2ch-article-mode           . emacs)
                                   (navi2ch-bookmark-mode           . emacs)
                                   (navi2ch-list-mode           . emacs)
                                   (dired-mode . emacs))
     do (evil-set-initial-state mode state))


  ;; advice for evil search
  (advice-add 'evil-ex-search-next :after 'recenter)
  (advice-add 'evil-ex-search-previous :after 'recenter)

  (liby 'skk
    ;; [[http://d.hatena.ne.jp/tarao/20130304/evil_config]]
    (defadvice evil-ex-search-update-pattern
        (around evil-inhibit-ex-search-update-pattern-in-skk-henkan activate)
      ;; SKKの未確定状態(skk-henkan-mode)ではない場合だけ, 検索パターンをアップデート
      "Inhibit search pattern update during `skk-henkan-mode'.
This is reasonable since inserted text during `skk-henkan-mode'
is a kind of temporary one which is not confirmed yet."
      (unless (and (boundp 'skk-henkan-mode) skk-henkan-mode)
        ad-do-it))

    (if (boundp 'skk-mode)
        (defun-add-hook muki:evil-disable-skk (evil-normal-state-entry-hook)
          (if skk-mode
              (skk-mode-off)))))
  )



(liby 'evil-nerd-commenter
  ;; (set-opton evilnc-hotkey-comment-operator ",,")
  (req 'evil-nerd-commenter
    (add-key evil-normal-state-map ",ci" 'evilnc-comment-or-uncomment-lines)
    (add-key evil-normal-state-map ",cl" 'evilnc-comment-or-uncomment-to-the-line)
    (add-key evil-normal-state-map ",cc" 'evilnc-copy-and-comment-lines)
    (add-key evil-normal-state-map ",cp" 'evilnc-comment-or-uncomment-paragraphs)
    (add-key evil-normal-state-map ",cr" 'comment-or-uncomment-region)))

(req 'evil-surround
  (enable-mode global-evil-surround-mode)
  (cl-defun muki:evil-surround-replace-pairs (new old)
    (set-option evil-surround-pairs-alist
                (cl-subst new old evil-surround-pairs-alist
                          :test 'cl-equalp)))
  (muki:evil-surround-replace-pairs '(?\( . ("(" . ")")) '(?\( . ("( " . " )")))
  (muki:evil-surround-replace-pairs '(?\) . ("(" . ")")) '(?\) . ("( " . " )")))
  (muki:evil-surround-replace-pairs '(?\[ . ("[" . "]")) '(?\[ . ("[ " . " ]")))
  (muki:evil-surround-replace-pairs '(?\] . ("[" . "]")) '(?\] . ("[ " . " ]")))

  )

(req 'evil-matchit
  (enable-mode global-evil-matchit-mode))

(req 'evil-exchange
  (evil-exchange-install))

;; (req 'evil-org)



(req 'evil-visualstar)

(req 'evil-operator-comment
  (global-evil-operator-comment-mode 1))

;; "[ SPC" 'evil-linewise-blank-lines-above
;; "] SPC" 'evil-linewise-blank-lines-below
;; "[ e" 'evil-linewise-move-text-up
;; "] e" 'evil-linewise-move-text-down
;; "[ p" 'evil-linewise-paste-newline-above
;; "] p" 'evil-linewise-paste-newline-below
(req 'evil-linewise)

(liby 'smartparens
  (req 'evil-smartparens))

(req 'evil-search-highlight-persist
  (enable-mode global-evil-search-highlight-persist))


(req 'evil-lisp-state
  (add-key evil-normal-state-map "L" 'evil-lisp-state)
  (add-key evil-lisp-state-map "C-g" 'evil-normal-state))

(req 'evil-jumper)


(provide 'init-evil)

;;; init-evil.el ends here
