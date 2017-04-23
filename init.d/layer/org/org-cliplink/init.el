;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'org-cliplink
  (command (org-cliplink muki:org-cliplink) "org-cliplink")
  (cl-defun muki:org-cliplink ()
    "Takes a URL from the clipboard and inserts an org-mode link
with the title of a page found by the URL into the current
buffer"
    (interactive)
    (cl-letf ((content (org-cliplink-clipboard-content)))
      (cl-labels ((instring? ()
                             (seq-elt (syntax-ppss) 3))
                  (escape (s)
                          (seq-into (colle:foldl 
                                     (lambda (a b)
                                       (if (eq b 34)
                                           (cl-list* ?\\ b a)
                                         (cons b a)))
                                     (string-to-list s)
                                     nil)
                                    'string)))
        (org-cliplink-retrieve-title content
                                     (if (instring?)
                                         (lambda (url title)
                                           (insert
                                            (escape (org-cliplink-org-mode-link-transformer
                                                     url
                                                     title))))
                                       (lambda (url title) 
                                         (insert
                                          (org-cliplink-org-mode-link-transformer
                                           url title))))))))

  (after 'org-cliplink
    (validate-setq org-cliplink-transport-implementation
                   'curl)
    (validate-setq org-cliplink-max-length 120)))

;;; init.el ends here
