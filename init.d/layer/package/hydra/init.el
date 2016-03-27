;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'hydra

  (defhydra muki:hydra-zoom (global-map "<f2>")
    "zoom"
    ("g" text-scale-increase "in")
    ("l" text-scale-decrease "out"))

  (after 'org
      (defhydra muki:hydra-org (org-mode-map "C-c")
        "move between headings"
        ("C-n" org-next-visible-heading "NextHeading")
        ("C-p" org-previous-visible-heading "NextHeading")))

  (after 'outline
      (defhydra muki:hydra-outline-minor (outline-minor-mode-map "C-c #")
        "
^Hide^             ^Show^           ^Move
^^^^^^------------------------------------------------------
_q_: sublevels     _a_: all         _u_: up
_t_: body          _e_: entry       _n_: next visible
_o_: other         _i_: children    _p_: previous visible
_c_: entry         _k_: branches    _f_: forward same level
_l_: leaves        _s_: subtree     _b_: backward same level
_d_: subtree

"
        ;; Hide
        ("q" hide-sublevels)    ; Hide everything but the top-level headings
        ("t" hide-body)         ; Hide everything but headings (all body lines)
        ("o" hide-other)        ; Hide other branches
        ("c" hide-entry)        ; Hide this entry's body
        ("l" hide-leaves)       ; Hide body lines in this entry and sub-entries
        ("d" hide-subtree)      ; Hide everything in this entry and sub-entries
        ;; Show
        ("a" show-all)          ; Show (expand) everything
        ("e" show-entry)        ; Show this heading's body
        ("i" show-children)     ; Show this heading's immediate child sub-headings
        ("k" show-branches)     ; Show all sub-headings under this heading
        ("s" show-subtree)      ; Show (expand) everything in this heading & below
        ;; Move
        ("u" outline-up-heading)                ; Up
        ("n" outline-next-visible-heading)      ; Next
        ("p" outline-previous-visible-heading)  ; Previous
        ("f" outline-forward-same-level)        ; Forward - same level
        ("b" outline-backward-same-level)       ; Backward - same level
        ("z" nil "leave")
        ))
  )

;;; init.el ends here
