i ← >'#'≠•file.Lines "input21.txt"

Poly ← +´⊢×⋆⟜(↕≠)
Center ← {𝕩↑/⁼≍⌊𝕩÷2}∘≠⌾⥊
Shift1 ← «∾»∾«˘≍»˘
Rot1 ← 1(⌽∾⌽⁼∾⌽˘≍⌽⁼˘)⊢

_Run ← {m F _𝕣 s:
  +´∘⥊⚇1 ∧⎉2⟜F{∨˝(𝔽m)𝔽⊢}⍟s Center m
}

P2 ← {
  n ← ≠𝕨
  p ← (n|𝕩)+n×↕3
  r ← (∾3‿3⥊<𝕨)Rot1 _Run p
  c ← {
    x‿y‿z ← r
    y‿z -↩ x
    z ↩ 2÷˜z - 2×y
    y -↩ z
    x‿y‿z
  }
  Poly⟜c 𝕩 ⌊∘÷ ≠𝕨
}

•Show i Shift1 _Run 64
•Show i P2 26501365
