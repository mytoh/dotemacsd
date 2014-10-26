;;; init-paradox -*- lexical-binding: t -*-

;;; Code:

(liby 'paradox
  (auto (paradox-list-packages) "paradox")
  (muki:define-launcher-key "p" 'paradox-list-packages))

(provide 'init-paradox)

;;; init-paradox.el ends here
