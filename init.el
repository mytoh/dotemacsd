;;; -*- coding: utf-8 -*-

(require 'cl-lib)

(cl-defun setup-user-emacs-directory ()
  ;; [[http://d.hatena.ne.jp/peccu/20130218/trial_init]]
  ;; make emacs loadable like this
  ;; $ emacs -q -l /path/to/init.el
  ;;
  ;; emacs -l init.el のように起動されるとload-file-nameにinit.elのパスが入るので
  (when load-file-name
    ;; 設定ファイルの基準となるディレクトリを読み込んだinit.elのあるディレクトリへ変更する
    (setq user-emacs-directory (file-name-directory load-file-name)))

  (unless (equal user-emacs-directory
                 (expand-file-name "~/.emacs.d/"))
    (cl-pushnew user-emacs-directory load-path)))

(setup-user-emacs-directory)

(cl-pushnew (locate-user-emacs-file "init.d")
            load-path)
(require 'init-load)
(put 'downcase-region 'disabled nil)
