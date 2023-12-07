⟨ Split ⟩ ← •Import "bqn-libs/strings.bqn"
ToBase ⇐ {>𝕨|⌊∘÷`⌾⌽𝕨«˜<𝕩}
FromBase ⇐ {+⟜(𝕨⊸×)´⌽𝕩}

i ← •file.Lines "input07.txt"
[hands,bids] ← ⍉>' 'SPlit¨i
hands >↩
bids •ParseFloat¨↩

HTypes ← ⟨
  ⊑    5∊⊢  # Five of a kind
  ⊑    4∊⊢  # Four of a kind
  ∧´ 2‿3∊⊢  # Full house
  ⊑    3∊⊢  # Three of a kind
  2≡·+´2=⊢  # Two pair
  ⊑    2∊⊢  # One pair
  1         # High card
⟩{𝕎𝕩}¨<

h1 ← 6-(⊑∘/·HTypes·/⁼(5⥊5)ToBase⊢)¨↕5⋆5
h2 ← h1∾h1 {(⌈˝»«)⌾((5⋆𝕨)‿∘⥊⊢)𝕩}´ ⌽1+↕5

_F_ ← {+´ bids × 1+·⍋∘⍋·(⊢(13 FromBase ∾˜)˘𝕘 ⊏˜ 5 FromBase˘ (⊢𝔽·⊐∧)˘) ⊐}

•Show "23456789TJQKA"     ⊢ _F_ h1 hands
•Show "J23456789TQKA" 0⊸∊⊸∾ _F_ h2 hands
