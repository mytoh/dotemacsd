;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'fuzzyjump
  (let ((map fuzzyjump-cmd-map))
    (define-key map (kbd "'") (clambda () (interactive) (fuzzyjump 1 0)))
    (define-key map (kbd ",") (clambda () (interactive) (fuzzyjump 1 1)))
    (define-key map (kbd ".") (clambda () (interactive) (fuzzyjump 1 2)))
    (define-key map (kbd "p") (clambda () (interactive) (fuzzyjump 1 3)))
    (define-key map (kbd "y") (clambda () (interactive) (fuzzyjump 1 4)))
    (define-key map (kbd "f") (clambda () (interactive) (fuzzyjump 1 5)))
    (define-key map (kbd "g") (clambda () (interactive) (fuzzyjump 1 6)))
    (define-key map (kbd "c") (clambda () (interactive) (fuzzyjump 1 7)))
    (define-key map (kbd "r") (clambda () (interactive) (fuzzyjump 1 8)))
    (define-key map (kbd "l") (clambda () (interactive) (fuzzyjump 1 9)))
    (define-key map (kbd "a") (clambda () (interactive) (fuzzyjump 2 0)))
    (define-key map (kbd "o") (clambda () (interactive) (fuzzyjump 2 1)))
    (define-key map (kbd "e") (clambda () (interactive) (fuzzyjump 2 2)))
    (define-key map (kbd "u") (clambda () (interactive) (fuzzyjump 2 3)))
    (define-key map (kbd "i") (clambda () (interactive) (fuzzyjump 2 4)))
    (define-key map (kbd "d") (clambda () (interactive) (fuzzyjump 2 5)))
    (define-key map (kbd "h") (clambda () (interactive) (fuzzyjump 2 6)))
    (define-key map (kbd "t") (clambda () (interactive) (fuzzyjump 2 7)))
    (define-key map (kbd "n") (clambda () (interactive) (fuzzyjump 2 9)))
    (define-key map (kbd ";") (clambda () (interactive) (fuzzyjump 3 0)))
    (define-key map (kbd "q") (clambda () (interactive) (fuzzyjump 3 1)))
    (define-key map (kbd "j") (clambda () (interactive) (fuzzyjump 3 2)))
    (define-key map (kbd "k") (clambda () (interactive) (fuzzyjump 3 3)))
    (define-key map (kbd "x") (clambda () (interactive) (fuzzyjump 3 4)))
    (define-key map (kbd "b") (clambda () (interactive) (fuzzyjump 3 5)))
    (define-key map (kbd "m") (clambda () (interactive) (fuzzyjump 3 6)))
    (define-key map (kbd "w") (clambda () (interactive) (fuzzyjump 3 7)))
    (define-key map (kbd "v") (clambda () (interactive) (fuzzyjump 3 9))))
  (fuzzyjump-mode t))

;;; init.el ends here
