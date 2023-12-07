⟨ Split ⟩ ← •Import "bqn-libs/strings.bqn"
ToBase ⇐ {>𝕨|⌊∘÷`⌾⌽𝕨«˜<𝕩}
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

h1 ← (HType (5⥊5)ToBase⊢)¨↕5⋆5
h2 ← h1∾h1 {(⌈˝»«)⌾((5⋆𝕨)‿∘⥊⊢)𝕩}´ ⌽1+↕5

_F_ ← {+´ bids × 1+·⍋∘⍋·(⊢(13 FromBase ∾˜)˘𝕘 ⊏˜ (𝔽 + 5 FromBase·⊐∧)˘) ⊐}

•Show "23456789TJQKA"            0 _F_ h1 hands
•Show "J23456789TQKA"  (⊑(5⋆5)×0∊⊢)_F_ h2 hands
