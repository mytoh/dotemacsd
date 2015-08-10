;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'theme-looper
  (defery 'theme-looper)
  (after 'theme-looper
      (theme-looper-set-theme-set
       '(comidia planet monokai molokai firebelly
         gruvbox base16-tomorrow odersky jazz purple-haze
         warm-night brin gotham soothe spolsky wilson noctilux erosiond
         material subatomic ectoplasm spacemacs-dark
         base16-ocean-dark zerodark plan9 spacegray atom-one-dark))))

;;; init.el ends here
