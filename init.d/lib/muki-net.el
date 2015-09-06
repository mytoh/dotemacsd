;;; muki-net -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:shutup-stop (where)
  (interactive "sWhere?: ")
  (cl-labels ((get-id (elm) (xml-get-children elm 'id))
              (get-div (elm) (xml-get-children elm 'div))
              (node-filter (elms target attr)
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
                       get-div))
               (my-body (thread-first divs
                          (node-filter "my_body" 'id)
                          car
                          get-div))
               (main (thread-first my-body
                       (node-filter "main" 'id)
                       car
                       get-div))
               (my-footer (thread-first main
                            (node-filter "my_footer" 'id)
                            car
                            get-div))
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

(cl-defun muki:play-mpv (url)
  (interactive "sUrl: ")
  (message "playing %s" url)
  (async-start-process "play-mpv" "mpv"
                       (lambda (proc)
                         (message "%s finished"
                                  url))
                       url))


(provide 'muki-net)
;;; muki-net.el ends here
