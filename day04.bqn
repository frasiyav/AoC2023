⟨ Split, ToNums ⟩ ← •Import "bqn-libs/strings.bqn"

i ← •file.Lines "input04.txt"

cards ← (ToNums¨" | "Split 1⊑": "Split⊢)¨i
wins ← (+´∊˜´)¨cards

•Show +´(××2⋆-⟜1)wins

t←0 ⋄ {c‿w←⊑𝕩 ⋄ t+↩c ⋄ c‿0⊸+¨⌾(w⊸↑)1↓𝕩}•_while_(0≢≠) 1⋈¨wins
•Show t
