
(add-hook 'c++-mode
          #'(lambda ()
              (c-set-style "bsd")
              (setq indent-tabs-mode nil)))


(provide 'lang-cpp)
