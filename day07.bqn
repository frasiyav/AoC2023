⟨ Split ⟩ ← •Import "bqn-libs/strings.bqn"
FromBase ⇐ {+⟜(𝕨⊸×)´⌽𝕩}

i ← •file.Lines "input07.txt"
[hands,bids] ← ⍉>' 'SPlit¨i
hands >↩
bids •ParseFloat¨↩

HType ← ⊑⟨
  ⟨1, 1, 1, 1, 1⟩  # High card
  ⟨1, 1, 1, 2⟩     # One pair
  ⟨1, 2, 2⟩        # Two pair
  ⟨1, 1, 3⟩        # Three of a kind
  ⟨2, 3⟩           # Full house
  ⟨1, 4⟩           # Four of a kind
  ⟨5⟩              # Five of a kind
⟩ ⊐⟜<·∧·/⁼⊐

h ← HType˘>⥊∾⌜´↕¨5⥊5
h ∾↩ h {(⌈˝»«)⌾((5⋆𝕨)‿∘⥊⊢)𝕩}´ ⌽1+↕5

_F ← {+´ bids × 1+⍋⍋ 13 FromBase˘ (⊢∾˘˜h⊏˜(5 FromBase 𝔽 ∾·⊐∧)˘)𝕨⊐𝕩}

•Show "23456789TJQKA"      0 _F hands
•Show "J23456789TQKA" (⊑0∊⊢) _F hands
