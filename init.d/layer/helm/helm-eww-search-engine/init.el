;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'helm-eww-search-engine
  (auto (helm-eww-search-engine) "helm-eww-search-engine")
  (after 'helm-eww-search-engine
    (cl-pushnew
     '("google image" ."https://encrypted.google.com/searchbyimage?safe=off&hl=en&site=search&image_url=")
     helm-eww-search-engine-engines-list)))

;;; init.el ends here
