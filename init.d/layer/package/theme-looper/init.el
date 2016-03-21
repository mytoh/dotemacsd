;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'colle)

(liby 'theme-looper
  (defery 'theme-looper)
  (after 'theme-looper
      (theme-looper-set-theme-set
       (colle:filter
        (lambda (theme)
          (colle:find (lambda (tm) (eq tm theme))
                  (custom-available-themes)))
        '(comidia planet monokai molokai firebelly
          gruvbox base16-tomorrow odersky jazz purple-haze
          warm-night brin gotham soothe spolsky wilson noctilux erosiond
          material subatomic ectoplasm spacemacs-dark
          base16-ocean-dark zerodark plan9 spacegray atom-one-dark
          aurora arjen-grey dracula inkpot idea-darkula
          reykjavik morning-star majapahit-dark redbelly badwolf
          hamburg omtose-phellack base16-harmonic16-dark
          Motoko motoko-night base16-oceanicnext-dark)))))

;;; init.el ends here
