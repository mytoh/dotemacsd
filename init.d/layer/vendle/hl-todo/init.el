;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;; [[http://rubikitch.com/2014/12/27/hl-todo/]]
;;; キーワードの色を設定する
;;; ただし、hl-todo.elを読み込む前あるいはcustomizeで設定すること
(setq hl-todo-keyword-faces
      '(("HOLD" . "#d0bf8f")
        ("TODO" . "#cc9393")
        ("NEXT" . "#dca3a3")
        ("THEM" . "#dc8cc3")
        ("PROG" . "#7cb8bb")
        ("OKAY" . "#7cb8bb")
        ("DONT" . "#5f7f5f")
        ("FAIL" . "#8c5353")
        ("DONE" . "#afd8af")
        ("FIXME" . "#cc9393")
        ("XXX"   . "#cc9393")
        ("XXXX"  . "#cc9393")
        ("???"   . "#cc9393")))
;;; global-hl-todo-modeで有効にするメジャーモード(derived-mode)
(setq hl-todo-activate-in-modes
      '(prog-mode ruby-mode enh-ruby-mode))

(req 'hl-todo
  (global-hl-todo-mode 1))

;;; init.el ends here
