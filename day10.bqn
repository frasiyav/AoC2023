_DoWhile_ ← {𝕨 𝔽•_while_𝔾 𝕨𝔽𝕩}
Pad ← ⊢↑˝·≍⟜¬2+≢
MDSlash ← /○⥊⟜↕⟜≢

input ← •file.Lines "input10.txt"

dirs ← [¯1‿0, 1‿0, 0‿¯1, 0‿1 ]
[n,s,w,e] ← =⌜˜↕4
[k, oc] ← ⍉[
  ⟨'.', 4⥊0⟩
  ⟨'S', n ∨ s ∨ e ∨ w⟩
  ⟨'|', n ∨ s⟩
  ⟨'-', e ∨ w⟩
  ⟨'L', n ∨ e⟩
  ⟨'J', n ∨ w⟩
  ⟨'7', s ∨ w⟩
  ⟨'F', s ∨ e⟩
]
ic ← k⊐["S|7F","S|LJ","S-LF","S-J7"]

grid ← Pad k⊐>input
start ← ⊑ MDSlash 1=grid
Out ← ⊑ oc ⊏˜ ⊑⟜grid # outward connections
In ← ic ⊑⟜grid⊸∊˜˘ ⊢ # inward connections
Next ← {1<≠𝕩?¯2⊏𝕩;0} {⊏ (𝕨⊸≢˘∧ (Out 𝕩) ∧ In)⊸/ dirs+⎉1 𝕩} ¯1⊏⊢

loop ← ¯1↓ ∾⟜Next _DoWhile_ (⊏≢¯1⊏⊢) [start]

•Show 2÷˜≠loop

# make mask of loop from list
l←×´d←≢grid
border ← d⥊ l↑ /⁼ (1«×`⌾⌽d) (+´×)⎉1 loop

# Replace 'S' with correct pipe
stype ← {𝕊[a,s,b]: oc ⊑∘⊐ ∨˝(∧˝dirs ⍉⊸= -⟜s)¨a‿b}3↑¯1⌽loop
grid stype⌾(start⊸⊑)↩

•Show +´⥊ border{𝕨 ¬⊸∧ ≠`⊸∨˘ 𝕨∧∊⟜2‿4‿5˘𝕩}grid
