MDSlash ← /○⥊⟜↕⟜≢

i ← •file.Lines "input11.txt"

m ← ".#"⊐>i
ex ← (/·¬∨˝){𝔽∘⍉⋈𝔽}m
g ← MDSlash m
l ← >⌜˜↕≠g
p ← l/○⥊(⍉≍)⌜˜g

F ← {+´∾(|∘-´˘+(𝕨-1)×·(+´1=⍋)¨⟜ex <∘∧˘)¨𝕩}

•Show 2 F p
•Show 1000000 F p
