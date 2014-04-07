;;; paketti-easy-kill.el -*- lexical-binding: t -*-

(req 'easy-kill
     (global-set-key [remap kill-ring-save] 'easy-kill))

(provide 'paketti-easy-kill)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
