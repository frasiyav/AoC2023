⟨ Split, ToNats ⟩ ← •Import "bqn-libs/strings.bqn"
i ← •file.Lines "input12.txt"

[s,g]←⍉>' 'Split¨i
s ".#?"⊸⊐¨↩
g ToNats¨↩

_Memoi_ ← {𝔽{𝕩.Has◶⟨(⊢⊣𝕩.Set)⟜𝔽,𝕩.Get⟩}•HashMap´𝕘}

Solve ← {𝕊s‿g:
  m ← ≢ v ← ⍉ s {
    ¬∨˝[
      (⊢<𝕩+↕)≠𝕨
      𝕩 > (+⟜1 × 0⊸≠)`⌾⌽𝕨
      ((𝕩⥊0)⊸«∨○(1⊸=)»)𝕨
    ]
  }⎉1‿0 g

  l ← g⌈´⊸+1+≠s
  base ← ¬(l↑(∨´»)»∨`⌾⌽)1=s

  F ← {
    s≠⊸≤⊑𝕩? 0;
    i‿j←𝕩
    (i⊑s)◶⟨
      F 1‿0+⊢
      (𝕩⊑v)◶⟨0,F⟩ (1+j⊑g)‿1+𝕩
      (𝕩⊑v)◶⟨F,F+·F(j⊑g)‿1+⊢⟩ 1‿0+𝕩
    ⟩𝕩
  }_Memoi_ (<˘⍉>↕∘≠⊸(⋈⟜(≠g)⊸⋈¨)base)

  F ⟨0,0⟩
}

•Show +´Solve˘⍉[s,g]
s (∾⟜2⊸∾´5⥊<)¨↩
g (∾5⥊<)¨↩
•Show +´Solve˘⍉[s,g]
