i ← >'.'∾˜¨•file.Lines "input03.txt"
Pad ← ⊢↑˝·≍⟜¬2+≢

num ← i∊"0123456789"
sym ← ¬ num ∨ i='.'
gear ← i='*'

pidx ← (1-˜⊢×·+`»⊸<)⌾⥊ num  # 
pnums ← •ParseFloat¨ pidx ⊔○⥊ i
adj ← (<·⍷·¯1⊸≠⊸/⥊)⎉2 3‿3↕Pad pidx

•Show +´   ⊏⟜pnums         ∾  sym/○⥊adj
•Show +´×´¨⊏⟜pnums¨ (2=≠¨)⊸/ gear/○⥊adj
