;;; config-font.el -*- lexical-binding: t -*-
;;;; font
(cl-defun font-exists-p (font)
  "Check to see if the named FONT is available"
  (find-font (font-spec :name font)))

(cl-defun set-default-font-size ()
  (set-face-attribute 'default nil :height 75))


(cl-defun set-ascii-font ()
  (cond ((null window-system) nil)
        ((font-exists-p "Comic Sans MS")
         (set-fontset-font nil 'ascii (font-spec :name  "Comic Sans MS" )))
        ((font-exists-p "-Comic Neue Angular")
         (set-fontset-font nil 'ascii (font-spec :name  "Comic Neue Angular"  :weight 'regular)))
        ((font-exists-p "Fira Mono")
         (set-fontset-font nil 'ascii (font-spec :name "Fira Mono" :weight 'normal)))
        ((font-exists-p "Ricty Diminished")
         (set-fontset-font nil 'ascii (font-spec :name "Ricty Diminished" :size 10 :weight 'regular)))
        ((font-exists-p "Liberation Mono")
         (set-fontset-font nil 'ascii (font-spec :name "Liberation Mono")))
        ((font-exists-p "CosmicSansNeueMono")
         (set-fontset-font nil 'ascii (font-spec :name "CosmicSansNeueMono")))
        ((font-exists-p "Inconsolata")
         (set-fontset-font nil 'ascii (font-spec :name "Inconsolata")))
        ((font-exists-p "Fantasque Sans Mono")
         (set-fontset-font nil 'ascii (font-spec :name  "Fantasque Sans Mono")))
        ((font-exists-p "Droid Sans Mono")
         (set-face-attribute 'ascii nil :height 80 :font "Droid Sans Mono"))
        ((font-exists-p "Source Code Pro")
         (set-face-attribute 'ascii nil :height 90 :font "Source Code Pro"))
        ((font-exists-p "Ricty")
         (set-face-attribute 'ascii nil :height 90 :font "Ricty"))
        ((font-exists-p "DejaVu Sans Mono")
         (set-face-attribute 'default nil :height 80 :font "DejaVu Sans Mono"))
        ((font-exists-p "ProFont")
         (set-face-attribute 'ascii nil :height 80 :font "ProFont"))
        ((font-exists-p "Bitstream Vera Sans Mono")
         (set-face-attribute 'ascii nil :height 80 :font "Bitstream Vera Sans Mono"))
        ((font-exists-p "Neep")
         (set-face-attribute 'ascii nil :height 80 :font "Neep"))))



;; いろはにほへと　ちりぬるを
;; わかよたれそ　　つねならむ
;; うゐのおくやま　けふこえて
;; あさきゆめみし　ゑひもせす
(cl-defun set-japanese-font ()
  (cond ((null window-system) nil)
        ((font-exists-p "Source Han Code JP")
         (set-fontset-font nil 'japanese-jisx0208
                           (font-spec :name  "Source Han Code JP" :size 9 :weight 'normal))
         (set-fontset-font nil 'han
                           (font-spec :name  "Source Han Code JP" :size 9 :weight 'light)))
        ((font-exists-p "Ricty Diminished")
         (set-fontset-font nil 'japanese-jisx0208
                           (font-spec :name "Ricty Diminished" )))
        ((font-exists-p "Hiragino Mincho Pro")
         (set-fontset-font nil 'japanese-jisx0208
                           (font-spec :name "Hiragino Mincho Pro")))
        ((font-exists-p "IPAGothic")
         (set-fontset-font nil 'japanese-jisx0208
                           '("IPAGothic" . "unicode-bmp"))
         (set-fontset-font  nil 'kana (font-spec :name "IPAGothic" :size 10 :weight 'normal))
         (set-fontset-font nil 'han (font-spec :name "IPAGothic" :size 10 :weight 'normal)))
        ((font-exists-p "Sazanami Gothic")
         (set-fontset-font nil 'japanese-jisx0208
                           (font-spec :family "Sazanami Gothic")))))

(cl-defun set-symbol-font ()
  (if (font-exists-p "Symbola")
      (set-fontset-font nil 'symbol (font-spec :name "Symbola" :size 11))))

(cl-defun set-cyrillic-font ()
  (cond ((font-exists-p "PT Mono")
         (set-fontset-font nil 'cyrillic
                           (font-spec :name "PT Mono")))
        ((font-exists-p "CosmicSansNeueMono")
         (set-fontset-font nil 'cyrillic (font-spec :name "CosmicSansNeueMono")))))

(cl-defun set-mplus-font ()
  "[[http://mplus-fonts.osdn.jp/mplus-bitmap-fonts/download/]]"
  (create-fontset-from-fontset-spec
   "-mplus-*-mplus-r-normal--10-*-*-*-*-*-fontset-mplus_10r,
    ascii:-mplus-gothic-medium-r-normal--10-*-iso8859-1,
    japanese-jisx0208:-mplus-gothic-medium-r-normal--10-*-jisx0208.1990-0,
    katakana-jisx0201:-mplus-gothic-medium-r-normal--10-*-jisx0201.1976-0")
  (create-fontset-from-fontset-spec
   "-mplus-*-mplus-r-normal--12-*-*-*-*-*-fontset-mplus_10b,
    ascii:-mplus-gothic-bold-r-normal--10-*-iso8859-1,
    japanese-jisx0208:-mplus-gothic-bold-r-normal--10-*-jisx0208.1990-0,
    katakana-jisx0201:-mplus-gothic-bold-r-normal--10-*-jisx0201.1976-0")
  (create-fontset-from-fontset-spec
   "-mplus-*-mplus-r-normal--12-*-*-*-*-*-fontset-mplus_12r,
    ascii:-mplus-gothic-medium-r-normal--12-*-iso8859-1,
    japanese-jisx0208:-mplus-gothic-medium-r-normal--12-*-jisx0208.1990-0,
    katakana-jisx0201:-mplus-gothic-medium-r-normal--12-*-jisx0201.1976-0")
  (create-fontset-from-fontset-spec
   "-mplus-*-mplus-r-normal--12-*-*-*-*-*-fontset-mplus_12b,
    ascii:-mplus-gothic-bold-r-normal--12-*-iso8859-1,
    japanese-jisx0208:-mplus-gothic-bold-r-normal--12-*-jisx0208.1990-0,
    katakana-jisx0201:-mplus-gothic-bold-r-normal--12-*-jisx0201.1976-0")
  (set-frame-font "fontset-mplus_10r"))

(cl-defun set-naga10-font ()
  (cl-letf ((k10  "-misc-fixed-medium-r-normal--10-*-75-75-c-100-jisx0208.1983-0")
            (a10 "-misc-fixed-medium-r-normal--10-*-75-75-c-50-iso8859-1")
            (r10 "-misc-fixed-medium-r-normal--10-*-75-75-c-50-jisx0201.1976-0")
            (kana10 "-misc-fixed-medium-r-normal--10-*-75-75-c-50-jisx0201.1976-0")
            (misc-iso "-misc-fixed-medium-r-normal--10-*-75-75-c-60-iso10646-1")
            (mplus-fxd "-mplus-fxd-normal-normal-normal-*-10-*-*-*-c-60-iso10646-1")
            (symbola (font-spec :family "Symbola"))
            (notoemoji (font-spec :family "Noto Emoji"))
            (emojione (font-spec :family "EmojiOne Color"))
            (mplus (font-spec :family "M+ 1mn"))
            (fontset "fontset-naga10"))
    (create-fontset-from-ascii-font
     "-misc-fixed-medium-r-normal--10-*-*-*-*-*"
     nil
     "naga10")

    (set-frame-font a10)

    (cl-flet ((set (script font) (set-fontset-font fontset script font)))
      (set 'ascii       a10)
      (set 'latin       a10)
      (set 'japanese-jisx0208 k10)
      (set 'katakana-jisx0201       r10)
      (set 'kana k10)
      (set 'cjk-misc misc-iso)
      (set 'han k10)
      (set 'katakana-jisx0201 kana10) ; 半角カナ
      (set  '(#x0080 . #x024F) a10)    ; 分音符付きラテン
      (set '(#x0370 . #x03FF) a10)    ; ギリシャ文字

      ;; (set 'symbol mplus)
      (set 'symbol symbola)
      ;; (set 'symbol notoemoji)
      ;;(set 'symbol emojione)
      )


    (colle:map
     (pcase-lambda (`(,font . ,ratio))
       (add-to-list 'face-font-rescale-alist
                    (cons
                     (rx-to-string `(: (* anything) ,font (* anything)))
                     ratio)))
     '(("EmojiOne" . 1.0)
       ("Symbola" . 1.3)))
    
    (add-to-list 'default-frame-alist `(font . ,fontset))
    (set-face-font 'default fontset)
    ))


(cl-defun set-naga10-font-fix ()
  ;; [[http://qiita.com/melito/items/238bdf72237290bc6e42][Emacs のフォント設定について - Qiita]]
  ;; #+begin_quote
  ;; (set-face-attribute 'default nil :family "Inconsolata" :height 110)
  ;;  ;(set-face-attribute 'default nil :family "Consolas" :height 104)
  ;; (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "MeiryoKe_Console"))
  ;; (setq face-font-rescale-alist '(("MeiryoKe_Console" . 1.08)))
  ;; #+end_quote

  (cl-letf ((k10  "-misc-fixed-medium-r-normal--10-*-75-75-c-100-jisx0208.1983-0")
            (a10 "-misc-fixed-medium-r-normal--10-*-75-75-c-50-iso8859-1")
            (r10 "-misc-fixed-medium-r-normal--10-*-75-75-c-50-jisx0201.1976-0")
            (misc-iso "-misc-fixed-medium-r-normal--10-*-75-75-c-60-iso10646-1")
            (mplus-fxd "-mplus-fxd-normal-normal-normal-*-10-*-*-*-c-60-iso10646-1")
            (symbola (font-spec :family "Symbola"))
            (emojione (find-font (font-spec :name "EmojiOne Color")))
            (fontset "fontset-naga10"))

    (set-face-attribute 'default nil
                        :font "-misc-fixed-medium-r-normal--10-*-*-*-*-*")
    (cl-labels ((set-font (script font) (set-fontset-font nil script font)))
      (set-font 'ascii       a10)
      (set-font 'latin       a10)
      (set-font 'japanese-jisx0208 k10)
      (set-font 'katakana-jisx0201       r10)
      (set-font 'kana k10)
      (set-font 'cjk-misc misc-iso)
      (set-font 'han k10)
      ;; (set 'symbol symbola)
      (set 'symbol emojione)
      )

    (setq face-font-rescale-alist
          (list
           (cons
            (rx-to-string `(: (* anything) "EmojiOne"  (* anything)))
            1.2)
           (cons
            (rx-to-string `(: (* anything) "Symbola"  (* anything)))
            1.2)
           face-font-rescale-alist))
    ;; (colle:map
    ;;  (pcase-lambda (`(,font . ,ratio))
    ;;      )
    ;;  '((. 1.2)
    ;;    ("Symbola" . 1.3)))
    ))


(cl-defun set-neep-font ()
  (cl-letf ((k10  "-misc-fixed-medium-r-normal--10-*-75-75-c-100-jisx0208.1983-0")
            (neep "-jmk-Neep-normal-normal-semicondensed-*-11-*-*-*-c-50-iso10646-1")
            (r10 "-misc-fixed-medium-r-normal--10-*-75-75-c-50-jisx0201.1976-0")
            (misc-iso "-misc-fixed-medium-r-normal--10-*-75-75-c-60-iso10646-1")
            (mplus-fxd "-mplus-fxd-normal-normal-normal-*-10-*-*-*-c-60-iso10646-1")
            (symbola "-unknown-Symbola-normal-normal-semicondensed-*-*-*-*-*-*-0-iso10646-1")
            (fontset "fontset-naga10"))
    (create-fontset-from-ascii-font
     "-misc-fixed-medium-r-normal--10-*-*-*-*-*"
     nil
     "naga10")

    (cl-flet ((set (script font) (set-fontset-font fontset script font)))
      (set 'ascii       neep)
      (set 'latin       neep)
      (set 'japanese-jisx0208 k10)
      (set 'katakana-jisx0201       r10)
      (set 'kana k10)
      (set 'cjk-misc misc-iso)
      (set 'han k10)
      (set 'symbol symbola))

    (cl-pushnew `(font . ,fontset) default-frame-alist)
    ))

(cl-defun set-yuki-font ()
  (cl-letf ((k10  "-misc-fixed-medium-r-normal--10-*-75-75-c-100-jisx0208.1983-0")
            (a10 "-misc-fixed-medium-r-normal--10-*-75-75-c-50-iso8859-1")
            (r10 "-misc-fixed-medium-r-normal--10-*-75-75-c-50-jisx0201.1976-0")
            (kana10 "-misc-fixed-medium-r-normal--10-*-75-75-c-50-jisx0201.1976-0")
            (misc-iso "-misc-fixed-medium-r-normal--10-*-75-75-c-60-iso10646-1")
            (mplus-fxd "-mplus-fxd-normal-normal-normal-*-10-*-*-*-c-60-iso10646-1")
            (yuki "-sxthe-yuki-normal-normal-normal-*-10-*-*-*-m-50-iso10646-1")
            (symbola (font-spec :family "Symbola"))
            (notoemoji (font-spec :family "Noto Emoji"))
            (emojione (font-spec :family "EmojiOne Color"))
            (mplus (font-spec :family "M+ 1mn"))
            (fontset "fontset-yuki"))
    (create-fontset-from-ascii-font
     yuki
     nil
     "yuki")

    (set-frame-font yuki)

    (cl-flet ((set (script font) (set-fontset-font fontset script font)))
      ;; (set 'ascii       a10)
      (set 'ascii       yuki)
      (set 'latin       yuki)
      (set 'japanese-jisx0208 k10)
      (set 'katakana-jisx0201       r10)
      (set 'kana k10)
      (set 'cjk-misc misc-iso)
      (set 'han k10)
      (set 'katakana-jisx0201 kana10) ; 半角カナ
      (set  '(#x0080 . #x024F) a10)    ; 分音符付きラテン
      (set '(#x0370 . #x03FF) a10)    ; ギリシャ文字

      ;; (set 'symbol mplus)
      (set 'symbol symbola)
      ;; (set 'symbol notoemoji)
      ;;(set 'symbol emojione)
      )


    (colle:map
     (pcase-lambda (`(,font . ,ratio))
       (add-to-list 'face-font-rescale-alist
                    (cons
                     (rx-to-string `(: (* anything) ,font (* anything)))
                     ratio)))
     '(("EmojiOne" . 1.0)
       ("Symbola" . 1.3)))
    
    (add-to-list 'default-frame-alist `(font . ,fontset))
    (set-face-font 'default fontset)
    ))

(cl-defun set-ricty-font ()
  ;; [[http://mgi.hatenablog.com/entry/2014/02/11/085108]]
  (set-fontset-font (frame-parameter nil 'font)
                    'japanese-jisx0208
                    (cons "Ricty Discord" "iso10646-1"))
  (set-fontset-font (frame-parameter nil 'font)
                    'japanese-jisx0212
                    (cons "Ricty Discord" "iso10646-1"))
  (set-fontset-font (frame-parameter nil 'font)
                    'katakana-jisx0201
                    (cons "Ricty Discord" "iso10646-1"))
  (set-face-attribute 'default nil :family "Inconsolata" :height 80)
  (set-fontset-font t 'symbol "Symbola" nil 'prepend))


(cl-defun set-ricty-diminished-font ()
  ;; [[http://mgi.hatenablog.com/entry/2014/02/11/085108]]
  (set-fontset-font (frame-parameter nil 'font)
                    'japanese-jisx0208
                    (cons "Ricty Diminished Discord" "iso10646-1"))
  (set-fontset-font (frame-parameter nil 'font)
                    'japanese-jisx0212
                    (cons "Ricty Diminished Discord"  "iso10646-1"))
  (set-fontset-font (frame-parameter nil 'font)
                    'katakana-jisx0201
                    (cons "Ricty Diminished Discord" "iso10646-1"))
  (set-fontset-font (frame-parameter nil 'font)
                    'unicode
                    (font-spec :name "Ricty Diminished Discord"
                               :registry  "iso10646-1"))
  (set-face-attribute 'default nil :family "Ricty Diminished Discord" :height 80)
  (set-face-attribute 'variable-pitch nil :family "Ricty Diminished Discord" )
  (set-fontset-font t 'symbol "Symbola" nil 'prepend))


(cl-defun set-myrica-font ()
  ;; [[http://mgi.hatenablog.com/entry/2014/02/11/085108]]
  (set-fontset-font (frame-parameter nil 'font)
                    'japanese-jisx0208
                    (cons "Myrica M" "iso10646-1"))
  (set-fontset-font (frame-parameter nil 'font)
                    'japanese-jisx0212
                    (cons "Myrica M"  "iso10646-1"))
  (set-fontset-font (frame-parameter nil 'font)
                    'katakana-jisx0201
                    (cons "Myrica M" "iso10646-1"))
  (set-fontset-font (frame-parameter nil 'font)
                    'unicode
                    (font-spec :name "Myrica M"
                               :registry  "iso10646-1"))
  (set-face-attribute 'default nil :family "Myrica M" :height 90)
  (set-face-attribute 'variable-pitch nil :family "Myrica M" )
  (set-fontset-font t 'symbol "Symbola" nil 'prepend))


(cl-defun set-source-han-code-jp ()
  ;; [[http://mgi.hatenablog.com/entry/2014/02/11/085108]]
  (set-fontset-font (frame-parameter nil 'font)
                    'japanese-jisx0208
                    (cons  "Source Han Code JP" "iso10646-1"))
  (set-fontset-font (frame-parameter nil 'font)
                    'japanese-jisx0212
                    (cons  "Source Han Code JP" "iso10646-1"))
  (set-fontset-font (frame-parameter nil 'font)
                    'katakana-jisx0201
                    (cons  "Source Han Code JP" "iso10646-1"))
  (set-fontset-font (frame-parameter nil 'font)
                    'kana (font-spec :name "Source Han Code JP"
                                     :registry  "iso10646-1"))
  (set-fontset-font (frame-parameter nil 'font)
                    'han (font-spec :name "Source Han Code JP"
                                    :registry  "iso10646-1"))
  (set-fontset-font (frame-parameter nil 'font)
                    'cjk-misc
                    (font-spec :name "Source Han Code JP"
                               :registry  "iso10646-1"))
  (set-face-attribute 'default nil :family   "Source Han Code JP" :height 70)
  (set-face-attribute 'variable-pitch nil :family  "Source Han Code JP" )

  ;;; below settings may cause displayng slow
  ;; (set-fontset-font t 'symbol (font-spec :name "Symbola" ) nil 'prepend)
  ;; (set-fontset-font t 'unicode (font-spec :name "Symbola" ) nil 'prepend)
  ;; (set-fontset-font t 'musical-symbol
  ;;                   (font-spec :name "Fira Mono" ) nil 'prepend)
  )

(cl-defun muki:font-set-rescale-alist ()
  " [[https://skalldan.wordpress.com/2011/08/05/mac-os-x-%E3%81%A7%E3%81%AE-emacs-2/]]
[[http://www.emacswiki.org/emacs/FontSets]] "
(colle:map
 (pcase-lambda (`(,font . ,ratio))
   (add-to-list 'face-font-rescale-alist
                (cons
                 (rx-to-string `(: (* anything) ,font (* anything)))
                 ratio)))
 '(("Hiragino Kaku Gothic ProN" . 1.2)
   ("LiHei Pro" . 1.2)
   ("Heiti SC" . 1.2)
   ("Arial Unicode MS" . 1.2)
   ("Devanagari MT" . 1.3)
   ("Kailasa" . 1.4)
   ("Symbola" . 1.7)
   )))

(cl-defun muki:setup-fira-code-symbol ()
  ;;  [[https://github.com/tonsky/FiraCode/wiki/Setting-up-Emacs][Setting up Emacs · tonsky/FiraCode Wiki · GitHub]]
  ;; [[https://github.com/tonsky/FiraCode/files/412440/FiraCode-Regular-Symbol.zip]]
  ;;
  ;; [[https://github.com/tonsky/FiraCode/issues/211][Add glyphs to unicode reserved plane · Issue #211 · tonsky/FiraCode · GitHub]]
  ;;  www  \ue100     **   \ue101    ***  \ue102    **/  \ue103
  ;;  *>  \ue104     */   \ue105     \\  \ue106    \\\  \ue107
  ;;  {-  \ue108     []   \ue109     ::  \ue10a    :::  \ue10b
  ;;  :=  \ue10c     !!   \ue10d     !=  \ue10e    !==  \ue10f
  ;;  -}  \ue110     --   \ue111    ---  \ue112    -->  \ue113
  ;;  ->  \ue114    ->>   \ue115     -<  \ue116    -<<  \ue117
  ;;  -~  \ue118     #{   \ue119     #[  \ue11a     ##  \ue11b
  ;; ###  \ue11c   ####   \ue11d     #(  \ue11e     #?  \ue11f
  ;;  #_  \ue120    #_(   \ue121     .-  \ue122     .=  \ue123
  ;;  ..  \ue124    ..<   \ue125    ...  \ue126     ?=  \ue127
  ;;  ??  \ue128     ;;   \ue129     /*  \ue12a    /**  \ue12b
  ;;  /=  \ue12c    /==   \ue12d     />  \ue12e     //  \ue12f
  ;; ///  \ue130     &&   \ue131     ||  \ue132    ||=  \ue133
  ;;  |=  \ue134     |>   \ue135     ^=  \ue136     $>  \ue137
  ;;  ++  \ue138    +++   \ue139     +>  \ue13a     +>  \ue13a
  ;; =:=  \ue13b     ==   \ue13c    ===  \ue13d    ==>  \ue13e
  ;;  =>  \ue13f    =>>   \ue140     <=  \ue141    =<<  \ue142
  ;; =/=  \ue143     >-   \ue144     >=  \ue145    >=>  \ue146
  ;;  >>  \ue147    >>-   \ue148    >>=  \ue149    >>>  \ue14a
  ;;  <*  \ue14b    <*>   \ue14c     <|  \ue14d    <|>  \ue14e
  ;;  <$  \ue14f    <$>   \ue150   <!--  \ue151     <-  \ue152
  ;; <--  \ue153    <->   \ue154     <+  \ue155    <+>  \ue156
  ;;  <=  \ue157    <==   \ue158    <=>  \ue159    <=<  \ue15a
  ;;  <>  \ue15b     <<   \ue15c    <<-  \ue15d    <<=  \ue15e
  ;; <<<  \ue15f     <~   \ue160    <~~  \ue161     </  \ue162
  ;; </>  \ue163     ~@   \ue164     ~-  \ue165     ~=  \ue166
  ;;  ~>  \ue167     ~~   \ue168    ~~>  \ue169     %%  \ue16a
  ;;   x  \ue16b      :   \ue16c      +  \ue16d      *  \ue16f


;;; Fira code
  ;; This works when using emacs --daemon + emacsclient
  (add-hook 'after-make-frame-functions (lambda (frame) (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")))
  ;; This works when using emacs without server/client
  (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")
  ;; I haven't found one statement that makes both of the above situations work, so I use both for now

  (defconst fira-code-font-lock-keywords-alist
    (mapcar (pcase-lambda (`(,regex ,char))
              `(,regex
                (0 (prog1 ()
                     (compose-region (match-beginning 1)
                                     (match-end 1)
                                     ;; The first argument to concat is a string containing a literal tab
                                     ,(concat "\t" (list (decode-char 'ucs char))))))))
            '(("\\(www\\)"                   #Xe100)
              ("[^/]\\(\\*\\*\\)[^/]"        #Xe101)
              ("\\(\\*\\*\\*\\)"             #Xe102)
              ("\\(\\*\\*/\\)"               #Xe103)
              ("\\(\\*>\\)"                  #Xe104)
              ("[^*]\\(\\*/\\)"              #Xe105)
              ("\\(\\\\\\\\\\)"              #Xe106)
              ("\\(\\\\\\\\\\\\\\)"          #Xe107)
              ("\\({-\\)"                    #Xe108)
              ("\\(\\[\\]\\)"                #Xe109)
              ("\\(::\\)"                    #Xe10a)
              ("\\(:::\\)"                   #Xe10b)
              ("[^=]\\(:=\\)"                #Xe10c)
              ("\\(!!\\)"                    #Xe10d)
              ("\\(!=\\)"                    #Xe10e)
              ("\\(!==\\)"                   #Xe10f)
              ("\\(-}\\)"                    #Xe110)
              ("\\(--\\)"                    #Xe111)
              ("\\(---\\)"                   #Xe112)
              ("\\(-->\\)"                   #Xe113)
              ("[^-]\\(->\\)"                #Xe114)
              ("\\(->>\\)"                   #Xe115)
              ("\\(-<\\)"                    #Xe116)
              ("\\(-<<\\)"                   #Xe117)
              ("\\(-~\\)"                    #Xe118)
              ("\\(#{\\)"                    #Xe119)
              ("\\(#\\[\\)"                  #Xe11a)
              ("\\(##\\)"                    #Xe11b)
              ("\\(###\\)"                   #Xe11c)
              ("\\(####\\)"                  #Xe11d)
              ("\\(#(\\)"                    #Xe11e)
              ("\\(#\\?\\)"                  #Xe11f)
              ("\\(#_\\)"                    #Xe120)
              ("\\(#_(\\)"                   #Xe121)
              ("\\(\\.-\\)"                  #Xe122)
              ("\\(\\.=\\)"                  #Xe123)
              ("\\(\\.\\.\\)"                #Xe124)
              ("\\(\\.\\.<\\)"               #Xe125)
              ("\\(\\.\\.\\.\\)"             #Xe126)
              ("\\(\\?=\\)"                  #Xe127)
              ("\\(\\?\\?\\)"                #Xe128)
              ("\\(;;\\)"                    #Xe129)
              ("\\(/\\*\\)"                  #Xe12a)
              ("\\(/\\*\\*\\)"               #Xe12b)
              ("\\(/=\\)"                    #Xe12c)
              ("\\(/==\\)"                   #Xe12d)
              ("\\(/>\\)"                    #Xe12e)
              ("\\(//\\)"                    #Xe12f)
              ("\\(///\\)"                   #Xe130)
              ("\\(&&\\)"                    #Xe131)
              ("\\(||\\)"                    #Xe132)
              ("\\(||=\\)"                   #Xe133)
              ("[^|]\\(|=\\)"                #Xe134)
              ("\\(|>\\)"                    #Xe135)
              ("\\(\\^=\\)"                  #Xe136)
              ("\\(\\$>\\)"                  #Xe137)
              ("\\(\\+\\+\\)"                #Xe138)
              ("\\(\\+\\+\\+\\)"             #Xe139)
              ("\\(\\+>\\)"                  #Xe13a)
              ("\\(=:=\\)"                   #Xe13b)
              ("[^!/]\\(==\\)[^>]"           #Xe13c)
              ("\\(===\\)"                   #Xe13d)
              ("\\(==>\\)"                   #Xe13e)
              ("[^=]\\(=>\\)"                #Xe13f)
              ("\\(=>>\\)"                   #Xe140)
              ("\\(<=\\)"                    #Xe141)
              ("\\(=<<\\)"                   #Xe142)
              ("\\(=/=\\)"                   #Xe143)
              ("\\(>-\\)"                    #Xe144)
              ("\\(>=\\)"                    #Xe145)
              ("\\(>=>\\)"                   #Xe146)
              ("[^-=]\\(>>\\)"               #Xe147)
              ("\\(>>-\\)"                   #Xe148)
              ("\\(>>=\\)"                   #Xe149)
              ("\\(>>>\\)"                   #Xe14a)
              ("\\(<\\*\\)"                  #Xe14b)
              ("\\(<\\*>\\)"                 #Xe14c)
              ("\\(<|\\)"                    #Xe14d)
              ("\\(<|>\\)"                   #Xe14e)
              ("\\(<\\$\\)"                  #Xe14f)
              ("\\(<\\$>\\)"                 #Xe150)
              ("\\(<!--\\)"                  #Xe151)
              ("\\(<-\\)"                    #Xe152)
              ("\\(<--\\)"                   #Xe153)
              ("\\(<->\\)"                   #Xe154)
              ("\\(<\\+\\)"                  #Xe155)
              ("\\(<\\+>\\)"                 #Xe156)
              ("\\(<=\\)"                    #Xe157)
              ("\\(<==\\)"                   #Xe158)
              ("\\(<=>\\)"                   #Xe159)
              ("\\(<=<\\)"                   #Xe15a)
              ("\\(<>\\)"                    #Xe15b)
              ("[^-=]\\(<<\\)"               #Xe15c)
              ("\\(<<-\\)"                   #Xe15d)
              ("\\(<<=\\)"                   #Xe15e)
              ("\\(<<<\\)"                   #Xe15f)
              ("\\(<~\\)"                    #Xe160)
              ("\\(<~~\\)"                   #Xe161)
              ("\\(</\\)"                    #Xe162)
              ("\\(</>\\)"                   #Xe163)
              ("\\(~@\\)"                    #Xe164)
              ("\\(~-\\)"                    #Xe165)
              ("\\(~=\\)"                    #Xe166)
              ("\\(~>\\)"                    #Xe167)
              ("[^<]\\(~~\\)"                #Xe168)
              ("\\(~~>\\)"                   #Xe169)
              ("\\(%%\\)"                    #Xe16a)
              ;; ("\\(x\\)"                   #Xe16b) This ended up being hard to do properly so i'm leaving it out.
              ("[^:=]\\(:\\)[^:=]"           #Xe16c)
              ("[^\\+<>]\\(\\+\\)[^\\+<>]"   #Xe16d)
              ("[^\\*/<>]\\(\\*\\)[^\\*/<>]" #Xe16f))))

  (defun add-fira-code-symbol-keywords ()
    (font-lock-add-keywords nil fira-code-font-lock-keywords-alist))

  (add-hook 'prog-mode-hook
            #'add-fira-code-symbol-keywords)
  )


(cl-defun muki:set-font (type)
  (cond
   ((cl-equalp type 'bitmap)
    ;; (set-ascii-font)
    (set-yuki-font)
    ;; (set-naga10-font)
    ;; (set-naga10-font-fix)
    ;; (set-neep-font)
    ;; (set-symbol-font)
    (set-cyrillic-font)
    ;; (set-japanese-font)
    )
   ((cl-equalp type 'antialias)
    (set-ascii-font)
    ;; (set-naga10-font)
    (set-symbol-font)
    (set-cyrillic-font)
    (set-japanese-font))))

(if (display-graphic-p)
    ;; (set-default-font-size)
    (muki:set-font 'bitmap)
  ;; (set-ricty-font)
  ;; (set-ricty-diminished-font)
  ;; (set-myrica-font)
  ;; (progn
  ;;   (set-source-han-code-jp)
  ;;   (muki:font-set-rescale-alist)
  ;;   )
  (muki:setup-fira-code-symbol)
  )

;; (font-info "Symbola)

;; [[http://nya-0.hatenablog.com/entry/2014/03/17/174309]]
