;;; muki-net -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:shutup-stop (where)
  (interactive "sWhere?: ")
  (cl-labels ((node-filter (elms target attr)
                (seq-filter
                 (lambda (elm) (string-equal target
                                        (xml-get-attribute elm attr)))
                 elms)))
    (cl-letf* ((html (with-current-buffer
                         (url-retrieve-synchronously
                          where)
                       (libxml-parse-html-region
                        (point-min) (point-max))))
               (root html)
               (divs (thread-first root
                       (xml-get-children 'body)
                       car
                       (xml-get-children 'div)))
               (my-body (thread-first (node-filter divs "my_body" 'id)
                          car
                          (xml-get-children 'div)))
               (main (xml-get-children
                      (car (node-filter my-body "main" 'id))
                      'div))
               (my-footer
                (xml-get-children
                 (car (node-filter main "my_footer" 'id))
                 'div))
               (box02 (car (node-filter my-footer "box02" 'class)))
               (links (xml-get-children box02 'a)))
      (message "playing %s" where)
      (require 'async)
      (async-start-process "shutup-stop" "mpv"
                           (lambda (proc)
                             (message "shutup-stop %s finished"
                                      where))
                           (xml-get-attribute (seq-elt links 1)
                                              'href)))))


(provide 'muki-net)
;;; muki-net.el ends here
