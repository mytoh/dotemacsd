
(add-hook 'c++-mode-hook
          (lambda ()
            (c-set-style "bsd")
            (setq indent-tabs-mode nil)))
