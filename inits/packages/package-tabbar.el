;; tabbar
(req 'tabbar
     ;; http://d.hatena.ne.jp/alfad/20100425/1272208744
     ;; http://idita.blog11.fc2.com/blog-entry-810.html
     (setq tabbar-cycle-scope 'tabs)
     (setq tabbar-use-images 1)
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
                         :background "#14141f")
     (set-face-attribute 'tabbar-selected nil
                         :foreground "#ebeb7c"
                         :background "#c36d68"
                         :box nil)
     (set-face-attribute 'tabbar-unselected nil
                         :foreground "#b0efa0"
                         :background "gray30"
                         :box '(:line-width 1 :color "gray14" :style nil))
     (set-face-attribute 'tabbar-button nil
                         :box '(:line-width 1 :color "gray14" :style nil))
     (set-face-attribute 'tabbar-separator nil
                         :height 60)
     ;; firefox keybind
     (global-set-key [(control tab)] 'tabbar-forward-tab)
     (global-set-key [(control shift tab)] 'tabbar-backward-tab))

(provide 'package-tabbar)
