⟨ ToNats ⟩ ← •Import "bqn-libs/strings.bqn"

i ← •file.Lines "input22.txt"
p ← (⍋⊑¨)⊸⊏(⌽˘2‿3⥊ToNats)¨i
bricks ← {(⊏𝕩)+⎉1>⥊↕¬˜˝𝕩}¨p
k ← 1+↕≠bricks
g ← 0⥊˜1+⌈˝∾bricks
k {g 𝕨⌾(𝕩⊸⊑)↩}˘¨bricks
g ↩ ⌽1↓g
S ← ((1↓≢g)⥊1+⌈´k)⊸«
Fall ← ⊢(×+·»×⟜¬)·∨˝⊢=⌜˜k/˜·∨´¨1↓⊢⊔(≠∧∧○×)⟜S
g {𝕩𝕊⍟≢Fall𝕩}↩
b ← k(⍷⊢/˜≠∧0≠⊢)¨1↓⊔⟜S g
•Show k¬○≠⍷∾(1=≠¨)⊸/b
•Show +´1-˜{≠⟨𝕩⟩(∧´1⊸⊑⊸∊)◶⟨⊢,∾⟜⊑˜⟩˝⌽k≍˘b}¨k
