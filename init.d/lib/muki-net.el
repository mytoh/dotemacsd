;;; muki-net -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:shutup-stop (where)
  (interactive "sWhere?: ")
  (cl-labels ((node-filter (target attr elms)
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
               (my-body (xml-get-children
                         (car (node-filter "my_body" 'id divs))
                         'div))
               (main (xml-get-children
                      (car (node-filter "main" 'id my-body))
                      'div))
               (my-footer
                (xml-get-children
                 (car (node-filter "my_footer" 'id main))
                 'div))
               (box02 (car (node-filter "box02" 'class my-footer)))
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
