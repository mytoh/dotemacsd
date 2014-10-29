;;; init-evil -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'evil
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
                 evil-cjk-emacs-word-boundary)
  (disable-option evil-move-cursor-back)
  (set-option evil-esc-delay 0.001)

  (req 'evil)

  (enable-mode evil-mode)
  ;; [[http://bling.github.io/blog/2013/10/27/emacs-as-my-leader-vim-survival-guide/]]
  (defadvice evil-search-next (after advice-for-evil-ex-search-next activate)
    (evil-scroll-line-to-center (line-number-at-pos)))

  ;; [[https://github.com/supermomonga/dot-emacs/blob/master/package-config/evil.el]]
  (define-key evil-normal-state-map (kbd "C-h")
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
      (define-key map key1 def2)
      (define-key map key2 def1)))
  (evil-swap-key evil-motion-state-map "j" "gj")
  (evil-swap-key evil-motion-state-map "k" "gk")

  ;; [[http://stackoverflow.com/questions/8483182/evil-mode-best-practice]]
  (cl-mapc
   (lambda (l)
     (cl-mapc
      (lambda (m)
        (define-key m (kbd (car l)) (cdr l)))
      (list evil-insert-state-map
            evil-motion-state-map)))
   '(("C-e" . evil-end-of-line)
     ("C-n" . evil-next-line)
     ("C-p" . evil-previous-line)
     ("C-f" . evil-forward-char)
     ("C-b" . evil-backward-char)))

  (muki:define-key evil-normal-state-map (kbd "C-r") 'isearch-backward)
  (define-key evil-motion-state-map ";" 'evil-ex)
  (define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)
  (define-key evil-visual-state-map (kbd "C-c") 'evil-exit-visual-state)

  (muki:define-key evil-ex-completion-map
    "M-p" 'previous-complete-history-element
    "M-n" 'next-complete-history-element)

  (liby 'helm
    (evil-ex-define-cmd "e[dit]" 'helm-find-files))

  ;; eww
  (evil-define-key 'motion eww-mode-map
    "<TAB>" 'shr-next-link)

  ;; smartparen
  (liby 'smartparens
    (with-eval-after-load 'smartparens
      ;; (define-key evil-normal-state-map ")" 'sp-up-sexp)
      ;; (define-key evil-normal-state-map "(" 'sp-backward-up-sexp)
      ))

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
  (define-key evil-normal-state-map [escape] 'keyboard-quit)
  (define-key evil-visual-state-map [escape] 'keyboard-quit)
  (define-key evil-emacs-state-map [escape] 'keyboard-quit)
  (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
  (global-set-key [escape] 'evil-exit-emacs-state)

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

(req 'evil-leader
  (global-evil-leader-mode)
  (evil-leader/set-leader ",")
  (enable-option evil-leader/in-all-states)

  (evil-leader/set-key
      ";" 'helm-M-x)

  (cl-defun switch-to-scratch-buffer ()
    (interactive)
    (switch-to-buffer
     (get-buffer-create "*scratch*")))

  (evil-leader/set-key
      "b K"  'muki:kill-other-buffers
    "b n"  'switch-to-next-buffer
    "b p"  'switch-to-prev-buffer
    "b s" 'switch-to-scratch-buffer)

  (liby 'eshell-session
    (evil-leader/set-key
        "z z" 'eshell-session:switch
      "z c" 'eshell-session:new
      "z n" 'eshell-session:next
      "z p" 'eshell-session:prev))

  (liby 'helm-ypv
    (evil-leader/set-key "e y" 'helm-ypv))

  (liby 'vendle
    (evil-leader/set-key "e v u" 'vendle-update
      "e v k" 'vendle-check
      "e v c" 'vendle-clean
      "e v l" 'helm-vendle))

  (liby 'helm-project-buffer
    (evil-leader/set-key "b b" 'helm-project-buffer))

  (liby 'helm
    (evil-leader/set-key
        "?" 'helm-descbinds
      "h s"   'helm-swoop
      "h t"  'helm-themes))

  (defun-add-hook muki:evil-ace-jump-mode-setup (after-init-hook)
    (when (and (featurep 'evil) (featurep 'evil-leader))
      (evil-leader/set-key
          "<SPC>c" 'evil-ace-jump-char-mode
        "<SPC>w" 'evil-ace-jump-word-mode
        "<SPC>l" 'evil-ace-jump-line-mode)))
  )

(liby 'evil-nerd-commenter
  ;; (set-opton evilnc-hotkey-comment-operator ",,")
  (req 'evil-nerd-commenter
    (define-key evil-normal-state-map ",ci" 'evilnc-comment-or-uncomment-lines)
    (define-key evil-normal-state-map ",cl" 'evilnc-comment-or-uncomment-to-the-line)
    (define-key evil-normal-state-map ",cc" 'evilnc-copy-and-comment-lines)
    (define-key evil-normal-state-map ",cp" 'evilnc-comment-or-uncomment-paragraphs)
    (define-key evil-normal-state-map ",cr" 'comment-or-uncomment-region)))

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

(req 'evil-org)

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
  (define-key evil-normal-state-map "L" 'evil-lisp-state)
  (define-key evil-lisp-state-map (kbd "C-g") 'evil-normal-state))

(req 'evil-jumper)

;; (req 'evil-escape
;;   (evil-escape-mode))

(provide 'init-evil)

;;; init-evil.el ends here
