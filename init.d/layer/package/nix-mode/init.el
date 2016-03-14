;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'nix-mode
  (autoload 'nix-mode "nix-mode" "Major mode for editing Nix expressions." t)
  (push '("\\.nix\\'" . nix-mode) auto-mode-alist)
  (push '("\\.nix\\.in\\'" . nix-mode) auto-mode-alist))

;;; init.el ends here
