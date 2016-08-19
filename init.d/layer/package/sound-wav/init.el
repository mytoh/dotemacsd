;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'sound-wav

  ;; [[http://rubikitch.com/2016/08/17/sound-wav/][emacs sound-wav.el : Emacsに効果音(SE)を付けて作業効率を3倍にする方法 | MELPA Emacs Lisp Elisp パ...]]
  (defun sound-wav--do-play-by-sox (files)
    (deferred:$
        (apply 'deferred:process "play" files)))
  (advice-add 'sound-wav--do-play :override 'sound-wav--do-play-by-sox)

;;; ファイルを開くときの効果音, sound for opening files
  (defun find-file-hook--sound ()
    (cl-letf ((file (expand-file-name
                     "sounds/Typewriter_Sound_FXs/Antique_Typewriter_Sound_FXs/Paper_load.wav"
                     user-emacs-directory)))
      (when (file-exists-p file)
        (sound-wav-play file))))

  (add-hook 'find-file-hook 'find-file-hook--sound)

  )

;;; init.el ends here
