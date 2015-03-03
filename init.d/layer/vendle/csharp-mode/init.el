;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; csharp-mode
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

;;; init.el ends here
