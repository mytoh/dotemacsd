;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'char-menu
  (after 'char-menu
      (set-option char-menu
       '("—" "‘’" "“”" "…" "«»" "–"
         ("Typography" "•" "©" "†" "‡" "°" "·" "§" "№" "★")
         ("Math"       "≈" "≡" "≠" "∞" "×" "±" "∓" "÷" "√")
         ("Arrows"     "←" "→" "↑" "↓" "⇐" "⇒" "⇑" "⇓")
         ("Greek"      "α" "β" "Y" "δ" "ε" "ζ" "η" "θ" "ι" "κ" "λ" "μ"
          "ν" "ξ" "ο" "π" "ρ" "σ" "τ" "υ" "φ" "χ" "ψ" "ω")))))

;;; init.el ends here
