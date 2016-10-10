
(after 'company
  (liby 'helm-company
    (command (helm-company) "helm-company")
    (define-key company-active-map
      (kbd "C-/") #'helm-company)))
