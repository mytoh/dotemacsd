;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'fuzzyjump
  (let ((map fuzzyjump-cmd-map))
    (define-key map (kbd "'") (lambda () (interactive) (fuzzyjump 1 0)))
    (define-key map (kbd ",") (lambda () (interactive) (fuzzyjump 1 1)))
    (define-key map (kbd ".") (lambda () (interactive) (fuzzyjump 1 2)))
    (define-key map (kbd "p") (lambda () (interactive) (fuzzyjump 1 3)))
    (define-key map (kbd "y") (lambda () (interactive) (fuzzyjump 1 4)))
    (define-key map (kbd "f") (lambda () (interactive) (fuzzyjump 1 5)))
    (define-key map (kbd "g") (lambda () (interactive) (fuzzyjump 1 6)))
    (define-key map (kbd "c") (lambda () (interactive) (fuzzyjump 1 7)))
    (define-key map (kbd "r") (lambda () (interactive) (fuzzyjump 1 8)))
    (define-key map (kbd "l") (lambda () (interactive) (fuzzyjump 1 9)))
    (define-key map (kbd "a") (lambda () (interactive) (fuzzyjump 2 0)))
    (define-key map (kbd "o") (lambda () (interactive) (fuzzyjump 2 1)))
    (define-key map (kbd "e") (lambda () (interactive) (fuzzyjump 2 2)))
    (define-key map (kbd "u") (lambda () (interactive) (fuzzyjump 2 3)))
    (define-key map (kbd "i") (lambda () (interactive) (fuzzyjump 2 4)))
    (define-key map (kbd "d") (lambda () (interactive) (fuzzyjump 2 5)))
    (define-key map (kbd "h") (lambda () (interactive) (fuzzyjump 2 6)))
    (define-key map (kbd "t") (lambda () (interactive) (fuzzyjump 2 7)))
    (define-key map (kbd "n") (lambda () (interactive) (fuzzyjump 2 9)))
    (define-key map (kbd ";") (lambda () (interactive) (fuzzyjump 3 0)))
    (define-key map (kbd "q") (lambda () (interactive) (fuzzyjump 3 1)))
    (define-key map (kbd "j") (lambda () (interactive) (fuzzyjump 3 2)))
    (define-key map (kbd "k") (lambda () (interactive) (fuzzyjump 3 3)))
    (define-key map (kbd "x") (lambda () (interactive) (fuzzyjump 3 4)))
    (define-key map (kbd "b") (lambda () (interactive) (fuzzyjump 3 5)))
    (define-key map (kbd "m") (lambda () (interactive) (fuzzyjump 3 6)))
    (define-key map (kbd "w") (lambda () (interactive) (fuzzyjump 3 7)))
    (define-key map (kbd "v") (lambda () (interactive) (fuzzyjump 3 9))))
  (fuzzyjump-mode t))

;;; init.el ends here
