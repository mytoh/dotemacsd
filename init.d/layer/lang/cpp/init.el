
(add-hook 'c++-mode-hook
          (clambda ()
              (c-set-style "bsd")
            (setq indent-tabs-mode nil)))
