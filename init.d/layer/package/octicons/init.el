;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'octicons
  (command (octicons) "octicons")

  (defun insert-octoicons-fonts ()
    (interactive)
    (cl-loop with i = 0
       with colors = '("red" "green" "blue" "yellow" "orange")
       for (name . codepoint) in octicons-alist
       for color = (nth (random (length colors)) colors)
       do
         (let ((beg (point)))
           (insert codepoint)
           (let ((ov (make-overlay beg (point))))
             (overlay-put ov 'face `(:family "github-octicons" :foreground  ,color :height 2.0)))
           (when (= (% i 18) 17)
             (insert "\n"))
           (cl-incf i)))))


;;; init.el ends here
