;; tabbar
(req 'tabbar
  ;; http://d.hatena.ne.jp/alfad/20100425/1272208744
  ;; http://idita.blog11.fc2.com/blog-entry-810.html
  (set-option tabbar-cycle-scope 'tabs)
  (set-option tabbar-use-images nil)
  (set-option tabbar-separator '(0.2)) ;; space between tabs
  (tabbar-mode t)
  ;; disbale buttons on left side
  (seq-doseq (btn '(tabbar-home-button
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
                      :background "#6b6b7b"
                      :box nil)
  (set-face-attribute 'tabbar-unselected nil
                      :foreground "#7b7b8b"
                      :background "#424242"
                      :box '(:line-width 1 :color "gray14" :style nil))
  (set-face-attribute 'tabbar-modified nil
                      :foreground "#88bb77"
                      :background "#424242"
                      :box '(:line-width 1 :color "gray14" :style nil))
  (set-face-attribute 'tabbar-button nil
                      :background (face-background 'default)
                      :box '(:line-width 1 :color "gray14" :style nil))
  (set-face-attribute 'tabbar-separator nil
                      :background (face-background 'default)
                      :height 60)

  (muki:global-set-key "M-[" 'tabbar-backward) ; 前のタブ
  (muki:global-set-key "M-]" 'tabbar-forward)  ; 次のタブ
  )

(provide 'paketti-tabbar)
