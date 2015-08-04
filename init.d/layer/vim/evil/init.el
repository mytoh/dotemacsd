;;; init-evil -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-plugins ()
  (muki:init-evil-leader)
  ;; (muki:init-evil-escape)
  (muki:init-evil-nerd-commenter)
  (muki:init-evil-surround)
  (muki:init-evil-linewise)
  (muki:init-evil-matchit)
  (muki:init-evil-exchange)
  (muki:init-evil-operator-comment)
  (muki:init-evil-jumper)
  (muki:init-evil-visualstar)
  (muki:init-evil-search-highlight-persist)
  (muki:init-evil-textobj-between)
  (muki:init-evil-extra-operator)
  ;; (muki:init-evil-visual-mark-mode)
  )

(cl-defun muki:init-evil-mode-generals ()
  (set-option evil-toggle-key "C-`")

  (set-option evil-emacs-state-cursor '("red" box)
              evil-normal-state-cursor '("green" box)
              evil-visual-state-cursor '("orange" box)
              evil-insert-state-cursor '("yellow" bar)
              evil-replace-state-cursor '("blue" bar)
              evil-operator-state-cursor '("cyan" hollow))
  (set-option evil-search-module 'evil-search
              evil-ex-search-vim-style-regexp t
              evil-magic 'very-magic
              evil-want-fine-undo 'very-fine)
  (enable-option evil-cross-lines
                 evil-cjk-emacs-word-boundary)
  (disable-option evil-move-cursor-back)
  (set-option evil-esc-delay 0.001)

  (cl-locally
      (enable-option evil-want-C-u-scroll)
    (when evil-want-C-u-scroll
      (add-global-key "M-u" #'universal-argument)
      (after 'evil
          (add-key evil-normal-state-map "M-u" #'universal-argument)))))


(cl-defun muki:init-evil-mode-mappings ()
  ;; [[http://bling.github.io/blog/2013/10/27/emacs-as-my-leader-vim-survival-guide/]]
  ;; (defadvice evil-search-next (after advice-for-evil-ex-search-next activate)
  ;;   (evil-scroll-line-to-center (line-number-at-pos)))

  ;; [[https://github.com/supermomonga/dot-emacs/blob/master/package-config/evil.el]]
  (add-key evil-normal-state-map  "C-h"
           (clambda ()
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
  (seq-each
   (pcase-lambda (`(,key . ,fun))
       (seq-each
        (clambda (m)
            (add-key m key fun))
        (list evil-insert-state-map
              evil-motion-state-map)))
   '(("C-e" . evil-end-of-line)
     ("C-n" . evil-next-line)
     ("C-p" . evil-previous-line)
     ("C-f" . evil-forward-char)
     ("C-b" . evil-backward-char)))

  (add-key evil-normal-state-map  "C-r" #'isearch-backward)
  (add-key evil-motion-state-map ";" #'evil-ex)
  (add-key evil-insert-state-map  "C-c" #'evil-normal-state)
  (add-key evil-visual-state-map  "C-c" #'evil-exit-visual-state)

  (add-key evil-ex-completion-map
    "M-p" #'previous-complete-history-element
    "M-n" #'next-complete-history-element)

  )


(cl-defun muki:init-evil-mode-org ()
  ;; org
  ;; normal state shortcuts
  (evil-define-key 'motion org-mode-map
    "]]" #'org-forward-same-level
    "[[" #'org-backward-same-level
    "{" #'outline-previous-heading
    "}" #'outline-next-heading
    "g{" #'outline-up-heading
    "g}" #'outline-next-heading
    (kbd "TAB") #'org-cycle)

  (evil-define-key 'normal org-mode-map
    "<<" #'org-shiftmetaleft
    ">>" #'org-shiftmetaright
    "<[[" #'org-metaleft
    ">]]" #'org-metaright))

(cl-defun muki:init-evil-mode-eww ()
  ;; eww
  (evil-define-key 'motion eww-mode-map
    "<TAB>" #'shr-next-link))


(cl-defun muki:init-evil-mode-multiple-cursors ()
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
         evil-previous-line))))

(cl-defun muki:init-evil-mode-elisp-slime-nav ()
  ;; elisp-slime-nav
  (after 'elisp-slime-nav
      (evil-define-key 'normal emacs-lisp-mode-map (kbd "K")
                       #'elisp-slime-nav-describe-elisp-thing-at-point)))

(cl-defun muki:init-evil-mode-skk ()
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
              (skk-mode-off))))))

(cl-defun muki:init-evil-initial-state ()
  (cl-loop for (mode . state)
     in '((git-commit-mode . insert)
          (git-rebase-mode . emacs)
          (magit-popup-mode . emacs)
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
     do (evil-set-initial-state mode state)))

(cl-defun muki:init-evil-modify-syntax-table ()
  (modify-syntax-entry ?_ "w" (standard-syntax-table)))

(liby 'evil
  (req 'goto-chg)

  (muki:init-evil-mode-generals)

  (muki:init-evil-plugins)

  (req 'evil)

  (enable-mode evil-mode)

  (muki:init-evil-mode-mappings)

  (muki:init-evil-mode-org)
  (muki:init-evil-mode-eww)
  (muki:init-evil-mode-multiple-cursors)
  (muki:init-evil-mode-elisp-slime-nav)

  (muki:init-evil-initial-state)

  ;; advice for evil search
  (advice-add 'evil-ex-search-next :after #'recenter)
  (advice-add 'evil-ex-search-previous :after #'recenter)

  (muki:init-evil-mode-skk)
  (muki:init-evil-modify-syntax-table)
  )

;; (req 'evil-org)


;;; init-evil.el ends here
