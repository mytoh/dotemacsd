;;; init-diminish -*- lexical-binding: t -*-

;;; Code:

(req 'diminish
  (after "guide-key"
      (diminish 'guide-key-mode " ⓘ"))
  (after "eldoc"
      (diminish 'eldoc-mode " ⎎"))
  (after "highlight-parentheses"
      (diminish 'highlight-parentheses-mode " ❪❫"))
  (after "highlight-symbol"
      (diminish 'highlight-symbol-mode " ✩"))
  (after "flycheck"
      (diminish 'flycheck-mode " ✔"))
  (after "outline"
      (diminish 'outline-minor-mode " 📇"))
  (after "golden-ratio"
      (diminish 'golden-ratio-mode " ⊞"))

  (after 'helm-mode
      (diminish 'helm-mode))
  )

(provide 'init-diminish)

;;; init-diminish.el ends here
