;;; paketti-highlight-tail.el -*- lexical-binding: t -*-

(req 'highlight-tail
     (message "Highlight-tail loaded - now your Emacs will be even more sexy!")

     (setq highlight-tail-colors '(("black" . 0)
                                   ("#bc4545" . 25)
                                   ("black" . 66)))

     (setq highlight-tail-steps 14
           highlight-tail-timer 1)

     (setq highlight-tail-posterior-type 'const)

     (highlight-tail-mode))

(provide 'paketti-highlight-tail)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
