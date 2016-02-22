;;; init.el ---                                      -*- lexical-binding: t; -*-

(liby 'idris-mode
  (command (idris-mode) "idris-mode")
  (mode "\\.idr\\'"  #'idris-mode))
