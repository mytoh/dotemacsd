;; ack-and-a-half
(autoload 'ack-and-a-half-same "ack-and-a-half" nil t)
(autoload 'ack-and-a-half "ack-and-a-half" nil t)
(autoload 'ack-and-a-half-find-file-same "ack-and-a-half" nil t)
(autoload 'ack-and-a-half-find-file "ack-and-a-half" nil t)
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)

;; ack-and-a-half
(req 'ack-and-a-half
     (defalias 'ack 'ack-and-a-half)
     (defalias 'ack-same 'ack-and-a-half-same)
     (defalias 'ack-find-file 'ack-and-a-half-find-file)
     (defalias 'ack-find-file-same 'ack-and-a-half-find-file-same))

(provide 'package-ack-and-a-half)
