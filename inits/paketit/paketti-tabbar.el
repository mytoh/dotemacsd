;; tabbar
(req 'tabbar
     ;; http://d.hatena.ne.jp/alfad/20100425/1272208744
     ;; http://idita.blog11.fc2.com/blog-entry-810.html
     (setq tabbar-cycle-scope 'tabs)
     (setq tabbar-use-images nil)
     (setq tabbar-separator '(1.0)) ;; space between tabs
     (tabbar-mode t)
     ;; disbale buttons no left side
     (dolist (btn '(tabbar-home-button
                    tabbar-buffer-home-button
                    tabbar-scroll-right-button
                    tabbar-scroll-left-button))
       (set btn (cons (cons "" nil)
                      (cons "" nil))))
     ;; face
     (set-face-attribute 'tabbar-default nil
                         :background (face-background 'default)
                         :height 1.0)

     (set-face-attribute 'tabbar-selected nil
                         :foreground "#ffffff"
                         :background "#336bcb"
                         :box nil)
     (set-face-attribute 'tabbar-unselected nil
                         :foreground "#7b7b8b"
                         :background "#424242"
                         :box '(:line-width 1 :color "gray14" :style nil))
     (set-face-attribute 'tabbar-button nil
                         :background (face-background 'default)
                         :box '(:line-width 1 :color "gray14" :style nil))
     (set-face-attribute 'tabbar-separator nil
                         :background (face-background 'default)
                         :height 60)
     ;; firefox keybind
     (global-set-key (kbd "M-]") 'tabbar-forward)  ; 次のタブ
     (global-set-key (kbd "M-[") 'tabbar-backward) ; 前のタブ
     )

(provide 'paketti-tabbar)
