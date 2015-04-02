;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

  ;;;;; artbollocks
(liby 'artbollocks-mode
  (command (artbollocks-mode) "artbollocks-mode")
  (add-hook 'text-mode-hook #'artbollocks-mode)
  (after 'artbollocks-mode
      (set-face-attribute 'artbollocks-lexical-illusions-face
       nil
       :background (color-lighten-name (face-background 'default) 40)
       :underline t)
    (set-face-attribute 'artbollocks-weasel-words-face
                        nil
                        :background (color-lighten-name (face-background 'default) 40)
                        :underline t)
    (set-face-attribute 'artbollocks-passive-voice-face
                        nil
                        :background (color-lighten-name (face-background 'default) 40)
                        :underline t)
    (set-face-attribute 'artbollocks-face
                        nil
                        :background (color-lighten-name (face-background 'default) 40)
                        :underline t)))



;;; init.el ends here
