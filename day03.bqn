i ← >'.'∾˜¨•file.Lines "input03.txt"
Pad ← ⊢↑˝·≍⟜¬2+≢

num ← i∊"0123456789"
sym ← ¬ num ∨ i='.'
gear ← i='*'

pidx ← (⊢×·+`»⊸<)⌾⥊ num
pnums ← •ParseFloat¨ (pidx-1) ⊔○⥊ i
adj ← 1-˜(<·⍷·0⊸≠⊸/⥊)⎉2 3‿3↕Pad pidx

•Show +´   ⊏⟜pnums         ∾  sym/○⥊adj
•Show +´×´¨⊏⟜pnums¨ (2=≠¨)⊸/ gear/○⥊adj
