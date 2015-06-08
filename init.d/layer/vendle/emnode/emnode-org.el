;;; emnode-org -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;; copy of elnode-org.el

(require 'emnode)
(req 'org)

(defun emnode-org-handler (httpcon)
  (emnode-docroot-for (expand-file-name "etusivu/etusivu.org"
                                        org-directory)
      with org-file
      on httpcon
      do (with-current-buffer (find-file-noselect org-file)
           (let ((org-html
                  ;; This might throw errors so you could condition-case it
                  (org-export-as 'html)))
             (emnode-send-html httpcon org-html)))))

(defun emnode-org-update-handler (httpcon)
  "Elnode handler to do org-mode updates.

Specify `file-name' for the file to update, `node-match' for an
org-agenda match, `in-node-match' to specify what will be
replaced in the node matched org line, `replace-match' for the
replacement."
  (emnode-method httpcon
    (POST
     (let* ((file-name (emnode-http-param httpcon "file-name"))
            (node-match (emnode-http-param httpcon "node-match"))
            (in-node-match (emnode-http-param httpcon "in-node-match"))
            (replace-match (emnode-http-param httpcon "replace-match")))
       (emnode-org--update
        file-name
        node-match
        in-node-match
        replace-match)))))

(defun emnode-org--update (file-name node-match in-node-match replace-match)
  "Update org-mode specified FILE-NAME.

NODE-MATCH specifies a match expression in the manner of org-agenda views.

IN-NODE-MATCH specifies a string match expression used with the
bounds of the matched node line.

REPLACE-MATCH specifies the replacement for the IN-NODE-MATCH."
  (with-current-buffer (find-file-noselect file-name)
    (org-map-entries
     (lambda ()
       (replace-regexp
        in-node-match
        replace-match
        nil
        (point)
        (line-end-position)))
     node-match)))

(emnode:start #'emnode-org-handler :port 8002)

;;; emnode-org.el ends here
